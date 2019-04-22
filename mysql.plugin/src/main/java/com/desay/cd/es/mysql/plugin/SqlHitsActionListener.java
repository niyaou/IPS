package com.desay.cd.es.mysql.plugin;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchResponseSections;
import org.elasticsearch.common.bytes.BytesReference;
import org.elasticsearch.common.document.DocumentField;
import org.elasticsearch.common.text.Text;
import org.elasticsearch.common.xcontent.XContentBuilder;
import org.elasticsearch.common.xcontent.XContentFactory;
import org.elasticsearch.rest.RestChannel;
import org.elasticsearch.rest.RestResponse;
import org.elasticsearch.rest.action.RestStatusToXContentListener;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;

import com.desay.cd.es.mysql.jdbc.JdbcUtils;

public class SqlHitsActionListener extends RestStatusToXContentListener<SearchResponse> {
    private final static Logger logger = LogManager.getLogger(SqlHitsActionListener.class);

    public SqlHitsActionListener(RestChannel channel) {
        super(channel);
    }

    @Override
    public RestResponse buildResponse(SearchResponse response, XContentBuilder builder) throws Exception {
        RestResponse restResponse = super.buildResponse(createResponse(response), builder);
        // RestResponse restResponse = super.buildResponse(response, builder);
        return restResponse;
    }

    private SearchResponse createResponse(SearchResponse response1) throws IOException {
        ArrayList<SearchHit> list = new ArrayList<SearchHit>();
        SearchHit[] origin = response1.getHits().getHits();
        try {
            for (SearchHit searchHit : origin) {
                HashMap<String, Object> map = JdbcUtils.getDevice(searchHit.getId());
                if(map.size()==0) {
                    continue;
                }
                map.put("create_date", ((Timestamp) map.get("create_date")).toString());
                Map<String, DocumentField> fields = new HashMap<String, DocumentField>();
                for (String key : map.keySet()) {
                    Object v = map.get(key);
                    if (v instanceof Timestamp) {
                        v = ((Timestamp) v).toString();
                    }
                    DocumentField field = new DocumentField(key, Collections.singletonList(v));
                    fields.put(key, field);
                }
                ;
                SearchHit hit = new SearchHit(searchHit.docId(), searchHit.getId(), new Text(searchHit.getType()),
                        Collections.EMPTY_MAP).sourceRef(BytesReference.bytes(XContentFactory.jsonBuilder().map(map)));
                hit.score(1.0f);
                list.add(hit);
            }
            JdbcUtils.close();
        } catch (SQLException e) {
            e.printStackTrace();
            JdbcUtils.close();
        }
        SearchHit[] hits = new SearchHit[list.size()];
        hits = list.toArray(hits);
        SearchHits searchHits = new SearchHits(hits, hits.length, 1);
        SearchResponse response = new SearchResponse(
                new SearchResponseSections(searchHits, null, null, true, true, null, 10), null, 1,
                response1.getTotalShards(), response1.getSuccessfulShards(), response1.getSkippedShards(),
                response1.getShardFailures(), response1.getClusters());
        return response;
    }

}
