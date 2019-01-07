<?xml version="1.0" encoding="UTF-8"?>
<project name="car" version="2.2" showFps="0" openLog="1" fps="60" scaleMode="0" orientaion="0" renderMode="1" bgColor="0" stagewidth="1920" stageheight="1080" startscenename="MainScene">
  <objects>
    <type uiname="Touch" uitype="AITouch"/>
    <type uiname="Browser" uitype="AIBrowser"/>
    <type uiname="System" uitype="AISystem"/>
    <type uiname="WebSocket" uitype="AIWebSocket"/>
    <type uiname="Function" uitype="AIFunction"/>
    <type uiname="Global" uitype="Global"/>
    <type uiname="Ajax" uitype="AIAjax"/>
    <type uiname="Keyboard" uitype="AIKeyboard"/>
    <type uiname="WebStorage" uitype="AIWebStorage"/>
    <type uiname="MainScene" uitype="Scene"/>
    <type uiname="Layer1" uitype="Layer"/>
    <type uiname="AISprite7" uitype="AISprite"/>
    <type uiname="AISprite29" uitype="AISprite"/>
    <type uiname="AISprite35" uitype="AISprite"/>
    <type uiname="Layer59" uitype="Layer"/>
    <type uiname="Layer61" uitype="Layer"/>
    <type uiname="p2" uitype="AISprite"/>
    <type uiname="start" uitype="AIButton"/>
    <type uiname="park" uitype="AIButton"/>
    <type uiname="service1" uitype="AIButton"/>
    <type uiname="service2" uitype="AIButton"/>
  </objects>
  <eventsheet>
    <sheet name="MainSceneEventSheet" targetscene="MainScene">
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnResourceLoadedEvent" targetuiname="AISprite7" targetuitype="AISprite" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="setRequestHeader" targetuiname="Ajax" targetuitype="AIAjax" isConflict="false" enabled="true">
            <properties>
              <p key="header" value="%22Access-Control-Allow-Origin%3A%20*%22" valuetype="string">
                <description>%E5%8F%91%E9%80%81%E6%95%B0%E6%8D%AE%E7%9A%84%E6%A0%87%E8%AE%B0%E3%80%82</description>
              </p>
              <p key="value" value="%22http%3A%2F%2Flocalhost%3A8080%2Fajax%22" valuetype="string">
                <description>%E8%A6%81%E8%AE%BE%E7%BD%AE%E8%AF%B7%E6%B1%82%E5%A4%B4%E7%9A%84%E5%9C%B0%E5%9D%80%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnButtonEndEvent" targetuiname="start" targetuitype="AIButton" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="setPosition" targetuiname="AISprite29" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="16" value="521" valuetype="number">
                <description>%E8%AE%BE%E7%BD%AE%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
              </p>
              <p key="17" value="140" valuetype="number">
                <description>%E8%AE%BE%E7%BD%AE%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
              </p>
            </properties>
          </action>
          <action type="setAngle" targetuiname="AISprite29" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="10" value="0" valuetype="number">
                <description>%E8%AE%BE%E7%BD%AE%E5%AE%9E%E4%BE%8B%E8%A7%92%E5%BA%A6%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnButtonEndEvent" targetuiname="park" targetuitype="AIButton" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="setRequestHeader" targetuiname="Ajax" targetuitype="AIAjax" isConflict="false" enabled="true">
            <properties>
              <p key="header" value="%22Access-Control-Allow-Origin%3A%20*%22" valuetype="string">
                <description>%E5%8F%91%E9%80%81%E6%95%B0%E6%8D%AE%E7%9A%84%E6%A0%87%E8%AE%B0%E3%80%82</description>
              </p>
              <p key="value" value="%22http%3A%2F%2Flocalhost%3A8080%2Fparking%22" valuetype="string">
                <description>%E8%A6%81%E8%AE%BE%E7%BD%AE%E8%AF%B7%E6%B1%82%E5%A4%B4%E7%9A%84%E5%9C%B0%E5%9D%80%E3%80%82</description>
              </p>
            </properties>
          </action>
          <action type="ajaxSendToURL" targetuiname="Ajax" targetuitype="AIAjax" isConflict="false" enabled="true">
            <properties>
              <p key="tag" value="%22%22" valuetype="string">
                <description>%E5%8F%91%E9%80%81%E6%95%B0%E6%8D%AE%E7%9A%84%E6%A0%87%E8%AE%B0%E3%80%82</description>
              </p>
              <p key="url" value="%22http%3A%2F%2Flocalhost%3A8080%2Fparking%2F%22%2B(AISprite29.x%2FAISprite7.width)%2B%22%2F%22%2B(AISprite29.y%2FAISprite7.height)" valuetype="string">
                <description>%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%9C%B0%E5%9D%80%E3%80%82</description>
              </p>
              <p key="data" value="AISprite29" valuetype="string">
                <description>%E5%90%91%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%8F%91%E9%80%81%E7%9A%84%E6%95%B0%E6%8D%AE%E3%80%82</description>
              </p>
              <p key="method" value="%22POST%22" valuetype="string">
                <description>%E5%90%91%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%8F%91%E9%80%81%E7%9A%84%E6%95%B0%E6%8D%AE%E3%80%82</description>
              </p>
            </properties>
          </action>
          <action type="ajaxSendToURL" targetuiname="Ajax" targetuitype="AIAjax" isConflict="false" enabled="true">
            <properties>
              <p key="tag" value="%22%22" valuetype="string">
                <description>%E5%8F%91%E9%80%81%E6%95%B0%E6%8D%AE%E7%9A%84%E6%A0%87%E8%AE%B0%E3%80%82</description>
              </p>
              <p key="url" value="%22http%3A%2F%2Flocalhost%3A8080%2Fparking1%2F%22%2BAISprite29.x%2B%22%2F%22%2BAISprite29.y" valuetype="string">
                <description>%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%9C%B0%E5%9D%80%E3%80%82</description>
              </p>
              <p key="data" value="AISprite29" valuetype="string">
                <description>%E5%90%91%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%8F%91%E9%80%81%E7%9A%84%E6%95%B0%E6%8D%AE%E3%80%82</description>
              </p>
              <p key="method" value="%22POST%22" valuetype="string">
                <description>%E5%90%91%E6%9C%8D%E5%8A%A1%E5%99%A8%E5%8F%91%E9%80%81%E7%9A%84%E6%95%B0%E6%8D%AE%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
    </sheet>
  </eventsheet>
  <scenes>
    <object type="Scene" uiname="MainScene" layer="2">
      <familys>
        <family name="组1">
          <items/>
          <customproperties/>
          <behaviors/>
        </family>
      </familys>
      <properties>
        <p key="sceneWidth" value="1920" valuetype="number"/>
        <p key="sceneHeight" value="1080" valuetype="number"/>
        <p key="width" value="1708" valuetype="number"/>
        <p key="height" value="960" valuetype="number"/>
      </properties>
      <customproperties/>
      <behaviors/>
      <children>
        <object type="Layer" uiname="Layer61" parallaxX="100" parallaxY="100" layer="2">
          <properties>
            <p key="sceneWidth" value="1708" valuetype="number"/>
            <p key="sceneHeight" value="960" valuetype="number"/>
            <p key="parallaxX" value="100" valuetype="number"/>
            <p key="parallaxY" value="100" valuetype="number"/>
            <p key="layerAlpha" value="1" valuetype="number"/>
            <p key="layerVisible" value="true" valuetype="boolean"/>
            <p key="layerScaleX" value="100" valuetype="number"/>
            <p key="layerScaleY" value="100" valuetype="number"/>
            <p key="cacheAsBitmap" value="false" valuetype="boolean"/>
          </properties>
          <customproperties/>
          <behaviors/>
          <children>
            <object type="AISprite" uiname="AISprite29" layer="2">
              <properties>
                <p key="name" value="AISprite29" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="30" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="516.2399794587204" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="120.95991783488104" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5053316228037558" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.4700354715211853" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="58.5300897372876" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="31.132917304789785" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="89.79132348583448" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fcar.jpg" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.00%7C31.13%2C58.53%7C31.13%2C58.53%7C0.00%2C0.00%7C0.00" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="速度监控" type="SpeedMoinitorBehavior">
                  <properties/>
                </b>
                <b name="八向运动" type="EightDirectionBehaivor">
                  <properties>
                    <p key="maxSpeed" value="200" valuetype="number">
                      <description>%E9%99%90%E5%88%B6%E6%9C%80%E5%A4%A7%E7%9A%84%E8%BF%90%E5%8A%A8%E9%80%9F%E5%BA%A6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="acceleration" value="600" valuetype="number">
                      <description>%E8%BF%90%E5%8A%A8%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%E3%80%82%20%EF%BC%88%E9%80%9A%E5%B8%B8%E4%B8%BA%E4%BA%86%E6%9B%B4%E5%A5%BD%E7%9A%84%E6%93%8D%E6%8E%A7%E5%AE%9E%E4%BE%8B%EF%BC%8C%E7%BB%99%E5%AE%9E%E4%BE%8B%E5%A2%9E%E5%8A%A0%E5%8A%A0%E9%80%9F%E5%BA%A6%EF%BC%89</description>
                    </p>
                    <p key="deceleration" value="500" valuetype="number">
                      <description>%E5%BD%93%E6%9D%BE%E5%BC%80%E9%94%AE%E7%9B%98%E6%97%B6%EF%BC%8C%E5%AE%9E%E4%BE%8B%E4%B8%8D%E4%BC%9A%E7%AB%8B%E5%8D%B3%E5%81%9C%E6%AD%A2%E8%BF%90%E5%8A%A8%EF%BC%8C%E8%80%8C%E6%98%AF%E4%BB%A5%E4%B8%80%E5%AE%9A%E7%9A%84%E5%87%8F%E9%80%9F%E5%BA%A6%E6%85%A2%E6%85%A2%E5%81%9C%E6%AD%A2%E8%BF%90%E5%8A%A8%EF%BC%8C%E7%B1%BB%E4%BC%BC%E4%BA%BA%E5%9C%A8%E7%9C%9F%E5%AE%9E%E4%B8%96%E7%95%8C%E4%B8%AD%E7%9A%84%E6%83%AF%E6%80%A7%E3%80%82</description>
                    </p>
                    <p key="directions" value="3" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%BF%90%E5%8A%A8%E7%9A%84%E6%96%B9%E5%90%91%EF%BC%8C%E8%BF%99%E9%87%8C%E6%94%AF%E6%8C%812%E3%80%814%E3%80%818%E6%96%B9%E5%90%91%E8%BF%90%E5%8A%A8%E3%80%82</description>
                    </p>
                    <p key="angleMode" value="3" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AF%B9%E8%B1%A1%E8%A7%92%E5%BA%A6%E4%BB%A5%E4%BB%80%E4%B9%88%E6%A8%A1%E5%BC%8F%E8%B7%9F%E9%9A%8F%E8%BF%90%E5%8A%A8%E6%96%B9%E5%90%91%E3%80%82</description>
                    </p>
                    <p key="defaultControls" value="1" valuetype="number">
                      <description>%E9%BB%98%E8%AE%A4%E4%B8%BA%E9%94%AE%E7%9B%98%E6%8E%A7%E5%88%B6%EF%BC%8C%E6%8E%A7%E5%88%B6%E9%94%AE%E4%B8%BA%E6%96%B9%E5%90%91%E9%94%AE%EF%BC%9A%0A%E2%86%91%20%3D%20%E4%B8%8A%0A%E2%86%93%20%3D%20%E4%B8%8B%0A%E2%86%90%20%3D%20%E5%B7%A6%0A%E2%86%92%20%3D%20%E5%8F%B3%0A%E8%AE%BE%E7%BD%AE%E4%B8%BA%E2%80%9C%E5%90%A6%E2%80%9D%E5%88%99%E9%BB%98%E8%AE%A4%E6%8E%A7%E5%88%B6%E9%94%AE%E4%B8%8D%E8%B5%B7%E4%BD%9C%E7%94%A8%E3%80%82</description>
                    </p>
                    <p key="enabled" value="1" valuetype="number">
                      <description>%E5%BC%80%E5%A7%8B%E4%BE%BF%E5%90%AF%E7%94%A8%E5%85%AB%E6%96%B9%E5%90%91%E8%A1%8C%E4%B8%BA%E3%80%82</description>
                    </p>
                  </properties>
                </b>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
                <b name="边界限制" type="BoundsOfRectBehaivor">
                  <properties>
                    <p key="boundType" value="0" valuetype="number">
                      <description>%E5%AE%9E%E4%BE%8B%E9%99%90%E5%88%B6%E5%87%BA%E7%95%8C%E6%A8%A1%E5%BC%8F%E3%80%82%0A%E3%80%90%E5%AE%9E%E4%BE%8B%E8%BE%B9%E6%A1%86%E3%80%91%E4%B8%BA%E9%99%90%E5%88%B6%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%BE%B9%E6%A1%86%E4%B8%8D%E8%83%BD%E5%87%BA%E8%AE%BE%E5%AE%9A%E7%9A%84%E8%BE%B9%E7%95%8C%E3%80%82%0A%E3%80%90%E5%AE%9E%E4%BE%8B%E9%94%9A%E7%82%B9%E3%80%91%E4%B8%BA%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%94%9A%E7%82%B9%E4%B8%8D%E8%83%BD%E5%87%BA%E8%AE%BE%E7%BD%AE%E7%9A%84%E8%BE%B9%E7%95%8C%EF%BC%8C%E4%BD%86%E8%BE%B9%E6%A1%86%E6%98%AF%E5%8F%AF%E4%BB%A5%E5%87%BA%E7%95%8C%E7%9A%84%E3%80%82</description>
                    </p>
                    <p key="x" value="0" valuetype="number">
                      <description>%E8%AE%BE%E5%AE%9A%E9%99%90%E5%88%B6%E8%BE%B9%E7%95%8C%E7%9A%84%E6%9C%80%E5%B7%A6%E4%B8%8A%E8%A7%92%E5%9D%90%E6%A0%87%E7%82%B9%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87%E5%80%BC%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
                    </p>
                    <p key="y" value="0" valuetype="number">
                      <description>%E8%AE%BE%E5%AE%9A%E9%99%90%E5%88%B6%E8%BE%B9%E7%95%8C%E7%9A%84%E6%9C%80%E5%B7%A6%E4%B8%8A%E8%A7%92%E5%9D%90%E6%A0%87%E7%82%B9%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87%E5%80%BC%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
                    </p>
                    <p key="width" value="0" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E9%99%90%E5%88%B6%E8%BE%B9%E7%95%8C%E7%9A%84%E5%AE%BD%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
                    </p>
                    <p key="height" value="0" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E9%99%90%E5%88%B6%E8%BE%B9%E7%95%8C%E7%9A%84%E9%AB%98%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AIButton" uiname="service2" layer="2">
              <properties>
                <p key="name" value="service2" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="103" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1535.3818555446592" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="896.8963893079286" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="3.67070257166356" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="-1.713409551695084" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="130.51576709669143" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="54.514105787591234" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="upSkin" value="resource%2FuserAsset%2Frelease.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E5%BC%B9%E8%B5%B7%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="downSkin" value="resource%2FuserAsset%2Fpressed.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E6%8C%89%E4%B8%8B%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="disableSkin" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%A6%81%E7%94%A8%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="text" value="service2" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%9A%84%E6%96%87%E6%9C%AC%E6%A0%87%E7%AD%BE</description>
                </p>
                <p key="fontFamily" value="Eras%20Demi%20ITC" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="28" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="7110707" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="displayAsPassword" value="false" valuetype="boolean">
                  <description>%E5%AF%86%E7%A0%81%E6%98%BE%E7%A4%BA</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="手势" type="GestureBehavior">
                  <properties>
                    <p key="showHelpline" value="1" valuetype="number">
                      <description>%E6%98%AF%E5%90%A6%E6%98%BE%E7%A4%BA%E6%89%8B%E5%8A%BF%E8%BE%85%E5%8A%A9%E7%BA%BF</description>
                    </p>
                    <p key="helplineColor" value="0" valuetype="number">
                      <description>%E8%BE%85%E5%8A%A9%E7%BA%BF%E9%A2%9C%E8%89%B2</description>
                    </p>
                    <p key="helplineThick" value="3" valuetype="number">
                      <description>%E8%BE%85%E5%8A%A9%E7%BA%BF%E7%B2%97%E7%BB%86%EF%BC%8C%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0</description>
                    </p>
                    <p key="fadeTime" value="0.5" valuetype="number">
                      <description>%E7%BB%98%E5%88%B6%E5%AE%8C%E6%88%90%E4%B9%8B%E5%90%8E%E9%94%80%E6%AF%81%E6%97%B6%E9%97%B4%EF%BC%8C%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AIButton" uiname="service1" layer="2">
              <properties>
                <p key="name" value="service1" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="100" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1204.1567524799304" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="1075.1767199164276" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="2.2744298795548428" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="1.5895158127818187" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="131.94377325907453" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="53.879436382087306" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="upSkin" value="resource%2FuserAsset%2Frelease.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E5%BC%B9%E8%B5%B7%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="downSkin" value="resource%2FuserAsset%2Fpressed.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E6%8C%89%E4%B8%8B%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="disableSkin" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%A6%81%E7%94%A8%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="text" value="service1" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%9A%84%E6%96%87%E6%9C%AC%E6%A0%87%E7%AD%BE</description>
                </p>
                <p key="fontFamily" value="Eras%20Demi%20ITC" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="28" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="6123287" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="displayAsPassword" value="false" valuetype="boolean">
                  <description>%E5%AF%86%E7%A0%81%E6%98%BE%E7%A4%BA</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AIButton" uiname="start" layer="2">
              <properties>
                <p key="name" value="start" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="90" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="854.7621022569488" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="783.7329502440091" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5278872156507038" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.4256707441183232" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="122.741066879267" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="50.94409038163053" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="upSkin" value="resource%2FuserAsset%2Frelease.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E5%BC%B9%E8%B5%B7%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="downSkin" value="resource%2FuserAsset%2Fpressed.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E6%8C%89%E4%B8%8B%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="disableSkin" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%A6%81%E7%94%A8%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="text" value="start" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%9A%84%E6%96%87%E6%9C%AC%E6%A0%87%E7%AD%BE</description>
                </p>
                <p key="fontFamily" value="Eras%20Demi%20ITC" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="36" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="12597006" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="displayAsPassword" value="false" valuetype="boolean">
                  <description>%E5%AF%86%E7%A0%81%E6%98%BE%E7%A4%BA</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AIButton" uiname="park" layer="2">
              <properties>
                <p key="name" value="park" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="97" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1212.0556258427966" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="881.2168223061201" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="3.385101339186789" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.8966683784399796" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="125.83508023109904" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="49" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="upSkin" value="resource%2FuserAsset%2Frelease.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E5%BC%B9%E8%B5%B7%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="downSkin" value="resource%2FuserAsset%2Fpressed.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E6%8C%89%E4%B8%8B%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="disableSkin" value="resource%2FuserAsset%2Finvalid.png" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%A6%81%E7%94%A8%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="text" value="parking" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%9A%84%E6%96%87%E6%9C%AC%E6%A0%87%E7%AD%BE</description>
                </p>
                <p key="fontFamily" value="Eras%20Demi%20ITC" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="28" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="12597006" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="displayAsPassword" value="false" valuetype="boolean">
                  <description>%E5%AF%86%E7%A0%81%E6%98%BE%E7%A4%BA</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
          </children>
        </object>
        <object type="Layer" uiname="Layer59" parallaxX="100" parallaxY="100" layer="1">
          <properties>
            <p key="sceneWidth" value="1708" valuetype="number"/>
            <p key="sceneHeight" value="960" valuetype="number"/>
            <p key="parallaxX" value="100" valuetype="number"/>
            <p key="parallaxY" value="100" valuetype="number"/>
            <p key="layerAlpha" value="1" valuetype="number"/>
            <p key="layerVisible" value="true" valuetype="boolean"/>
            <p key="layerScaleX" value="100" valuetype="number"/>
            <p key="layerScaleY" value="100" valuetype="number"/>
            <p key="cacheAsBitmap" value="false" valuetype="boolean"/>
          </properties>
          <customproperties/>
          <behaviors/>
          <children>
            <object type="AISprite" uiname="p2" layer="1">
              <properties>
                <p key="name" value="p2" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="69" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1179.167850813711" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="321.5330828761413" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.2440849171354946" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="2.342588596624418" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="45.597396326591024" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="40.52004108255952" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fparking.jpg" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="p2" layer="1">
              <properties>
                <p key="name" value="p2" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="77" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="681.0591154358963" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="722.4775327301676" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.2440849171354946" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="2.342588596624418" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="45.597396326591024" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="40.52004108255952" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fparking.jpg" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="p2" layer="1">
              <properties>
                <p key="name" value="p2" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="80" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="340.21263579701406" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="478.6579371531626" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.2440849171354946" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="2.342588596624418" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="45.597396326591024" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="40.52004108255952" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fparking.jpg" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="p2" layer="1">
              <properties>
                <p key="name" value="p2" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="81" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1375.2235806958824" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="566.9473170467302" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.2440849171354946" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="2.342588596624418" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="45.597396326591024" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="40.52004108255952" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fparking.jpg" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="p2" layer="1">
              <properties>
                <p key="name" value="p2" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="82" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1395.4862305871704" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="930.4517360888368" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.2440849171354946" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="2.342588596624418" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="45.597396326591024" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="40.52004108255952" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fparking.jpg" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="87" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="385.16604700101703" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="444.33693898935" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.503492858789202" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.546519003849965" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="16.385552746735073" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="70.65017973619803" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="86" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="248.00379855598277" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="608.850646986441" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.503492858789202" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.546519003849965" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="133.9580601163446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="401.63027470651616" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="85" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1418.3267890253571" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="781.0473102934324" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="168.46820904062207" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="78.34554627793341" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="84" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1534.4617665500573" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="809.9100372145198" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="168.46820904062207" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="121.66173320357916" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="83" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1459.9965341602813" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="483.7769867682763" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="72.39512778245876" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="51.53076389539092" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="79" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="713.3106881328712" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="473.6391096225308" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.612945153092965" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.49408029133101095" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="98.33723973243372" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="268" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="78" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="786.7613647278229" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="521.8497810821626" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.612945153092965" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.49408029133101095" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="98.33723973243372" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="268.0323648479316" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="76" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1306.857367349391" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="130.5826441223287" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="332.2922493363332" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="154.5852086140975" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="74" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1394.9867010250784" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="173.89331558196062" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="332.2922493363332" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="154.5852086140975" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="73" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="862.9750718613788" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="171.6699942310404" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="601.2334099186387" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="154.5852086140975" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="72" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="858.6704127265147" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="179.20468931314403" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="601.2334099186387" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="154.5852086140975" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="66" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1249.172879013565" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="485.47698676827633" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="221.5424380758911" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="51.53076389539092" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="57" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="330.84871066477945" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="172.16553426982324" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.4040793470686325" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.47916172453338446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="246.77054694467483" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="155.9338811007938" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.00%7C0.00%2C0.00%7C155.93%2C246.77%7C155.93%2C246.77%7C0.00" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="65" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1696.9697438014423" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="514.5003081191966" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="221.5424380758911" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="51.53076389539092" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="64" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1605.422857281862" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="127.16758372504565" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.4040793470686325" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.47916172453338446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="225.66778921166787" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="62.79614584308675" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.00%7C0.00%2C0.00%7C155.93%2C246.77%7C155.93%2C246.77%7C0.00" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="63" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="510.1674625289673" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="62.55009496269551" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.4040793470686325" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.47916172453338446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="225.66778921166787" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="62.79614584308675" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.00%7C0.00%2C0.00%7C155.93%2C246.77%7C155.93%2C246.77%7C0.00" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="36" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="863.4370451577147" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="174.85468931314404" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="601.2334099186387" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="154.5852086140975" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="37" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="463.26817752886143" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="989.205039782179" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="467.3181653573024" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="19.559292593128475" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="39" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="717.7572900055661" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="325.06273723881844" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="788.912629513667" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="41.6772635526745" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0.12467576737043372" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="38" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="857.6083925786583" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="839.3467832563988" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="294.4500860331599" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="234.55355370759708" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="40" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1377.564755372462" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="1004.6128719773254" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="322.2168725239578" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="154.98187699253708" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="41" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1135.123524521506" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="978.436707010835" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.6185048505532046" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.4960997909604321" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="169.6582141759434" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="160.931902669137" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="42" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="193.85480942761197" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="925.095069971348" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.4040793470686325" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.47916172453338446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="47.88102199486923" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="141.3364847742024" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="43" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="326.01912915047876" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="669.055982716257" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.503492858789202" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.546519003849965" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="133.9580601163446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="401.63027470651616" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="44" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="459.8627647692468" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="916.7823179964118" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="277.393345760241" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="22.732639620648342" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="45" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="782.711985467896" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="364.8093394446475" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="649.4682847369409" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="33.83935421696788" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="46" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="554.63744831343" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="530.8284638394983" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="190.28496985482087" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="268.0323648479316" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="47" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1080.5622467355724" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="551.7651887064577" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="341.5742893918293" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="228.0481923011817" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="48" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1363.18077606695" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="373.60473166298345" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="355.29901528585265" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="121.58239952789114" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="49" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1314.6906078686711" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="807.3600372145197" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="94.92589167784972" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="121.66173320357916" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="50" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1177.2223344110062" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="752.5660835294859" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.6185048505532046" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.4960997909604321" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="177.59158174474237" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="187.35001667323957" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="51" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1506.1155346738133" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="628.251344186544" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="360.93170625969947" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="121.66173320357916" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="52" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1636.642545345322" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="999.3687598299098" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.4040793470686325" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.47916172453338446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="58.27373350999619" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="149.428519694378" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="53" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1719.763182470682" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="815.8588226192007" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.4040793470686325" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.47916172453338446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="74.06113497190813" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="194.56938116084743" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="54" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1753.4814623857037" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="407.6560392095939" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.489774685891715" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.47916172453338446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="67.7144409168684" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="194.56938116084743" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="55" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1671.7417555230645" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="255.82521955822" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.489774685891715" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.47916172453338446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="63.66842345678083" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="189.80936061956777" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="56" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="536.1505024071446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="757.7744731989967" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.4220025333580155" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.48222963772412886" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="181.47893185345447" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="258.5916574410602" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite35" layer="1">
              <properties>
                <p key="name" value="AISprite35" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="58" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="190.49759907313037" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="322.8664835228927" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.489774685891715" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.47916172453338446" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="72.47446145814831" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="200.99540889157515" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbarrel.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
          </children>
        </object>
        <object type="Layer" uiname="Layer1" parallaxX="100" parallaxY="100" layer="0">
          <properties>
            <p key="sceneWidth" value="1920" valuetype="number"/>
            <p key="sceneHeight" value="1080" valuetype="number"/>
            <p key="parallaxX" value="100" valuetype="number"/>
            <p key="parallaxY" value="100" valuetype="number"/>
            <p key="layerAlpha" value="1" valuetype="number"/>
            <p key="layerVisible" value="true" valuetype="boolean"/>
            <p key="layerScaleX" value="100" valuetype="number"/>
            <p key="layerScaleY" value="100" valuetype="number"/>
            <p key="cacheAsBitmap" value="false" valuetype="boolean"/>
          </properties>
          <customproperties/>
          <behaviors/>
          <children>
            <object type="AISprite" uiname="AISprite7" layer="0">
              <properties>
                <p key="name" value="AISprite7" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="8" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="1054.6450750957797" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="669.6312260741848" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5487571548499142" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.6204696556743639" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="1920" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="1080" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2F%E5%BD%A9%E7%BB%98%E5%9F%8E%E5%B8%82%E5%9C%B0%E5%9B%BE%E7%9F%A2%E9%87%8F%E7%B4%A0%E6%9D%90.jpg" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
          </children>
        </object>
      </children>
    </object>
  </scenes>
</project>