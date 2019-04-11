package com.desay.cd.es.mysql.plugin;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.elasticsearch.action.Action;
import org.elasticsearch.action.search.SearchAction;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.ElasticsearchClient;
import org.elasticsearch.client.node.NodeClient;
import org.elasticsearch.common.bytes.BytesArray;
import org.elasticsearch.common.bytes.BytesReference;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.rest.RestChannel;
import org.elasticsearch.rest.RestController;
import org.elasticsearch.rest.RestHandler;
import org.elasticsearch.rest.RestRequest;
import org.elasticsearch.rest.RestRequest.Method;
import org.elasticsearch.rest.RestResponse;
import org.elasticsearch.rest.RestStatus;

import com.desay.cd.es.mysql.jdbc.JdbcUtils;

public class CustumAction extends Action<SearchRequest, SearchResponse, SearchRequestBuilder> implements RestHandler{
    public static final String NAME = "hello world";
    private final static Logger logger = LogManager.getLogger(CustumAction.class);
    public CustumAction() {
        super(NAME);
        logger.info(NAME+"   -----------");
    }
    public CustumAction(Settings settings, RestController restController) {
       super(NAME);
       logger.info(NAME+"   -------11111----");
        restController.registerHandler(Method.GET, "/_hello", this);
    }

   
    @Override
    public SearchResponse newResponse() {
        return new SearchResponse();
    }

    @Override
    public SearchRequestBuilder newRequestBuilder(ElasticsearchClient client) {
        return new SearchRequestBuilder(client, SearchAction.INSTANCE);
    }

    @Override
    public void handleRequest(RestRequest request, RestChannel channel, NodeClient client) throws Exception {
        
      channel.sendResponse(new RestResponse() {
        @Override
        public RestStatus status() {
            return RestStatus.OK;
        }
        
        @Override
        public String contentType() {
            return "-------hello";
        }
        @Override
        public BytesReference content() {
            String a="";
            try {
               a= JdbcUtils. getDevice("8a5982646a06c04a016a0710d477000f").toString();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                a=" exception";
            }
            return new BytesArray(a);
        }
    });
    }
}
