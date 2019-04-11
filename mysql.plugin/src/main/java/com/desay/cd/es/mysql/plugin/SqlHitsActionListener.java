package com.desay.cd.es.mysql.plugin;

import org.elasticsearch.action.ActionListener;
import org.elasticsearch.rest.RestChannel;

public class SqlHitsActionListener<Response> implements ActionListener<Response>{

    public final RestChannel channel;

    public SqlHitsActionListener(RestChannel channel) {
        this.channel = channel;
    }
    
    
    @Override
    public void onResponse(Response response) {
        // TODO Auto-generated method stub
        
    }

    @Override
    public void onFailure(Exception e) {
        // TODO Auto-generated method stub
        
    }

}
