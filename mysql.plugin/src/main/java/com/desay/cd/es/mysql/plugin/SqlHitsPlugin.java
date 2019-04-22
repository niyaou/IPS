package com.desay.cd.es.mysql.plugin;

import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.elasticsearch.cluster.metadata.IndexNameExpressionResolver;
import org.elasticsearch.cluster.node.DiscoveryNodes;
import org.elasticsearch.common.settings.ClusterSettings;
import org.elasticsearch.common.settings.IndexScopedSettings;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.settings.SettingsFilter;
import org.elasticsearch.plugins.ActionPlugin;
import org.elasticsearch.plugins.Plugin;
import org.elasticsearch.plugins.SearchPlugin;
import org.elasticsearch.rest.RestController;
import org.elasticsearch.rest.RestHandler;

public class SqlHitsPlugin extends Plugin implements ActionPlugin,SearchPlugin {
    private final static Logger logger = LogManager.getLogger(SqlHitsPlugin.class);
    public SqlHitsPlugin() {
        super();
        logger.debug("fdsafasfsafas===============");
    }

    @Override
    public List<RestHandler> getRestHandlers(Settings settings, RestController restController,
            ClusterSettings clusterSettings, IndexScopedSettings indexScopedSettings, SettingsFilter settingsFilter,
            IndexNameExpressionResolver indexNameExpressionResolver, Supplier<DiscoveryNodes> nodesInCluster) {
        return Collections.singletonList(new CustumAction(settings, restController));
    }

}
