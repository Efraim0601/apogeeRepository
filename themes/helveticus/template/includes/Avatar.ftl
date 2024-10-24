<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

<div id="user-avatar" onclick="showHideUserPref()">
<#if avatarDetail??>
    <img src="<@ofbizUrl>stream?contentId=${avatarDetail.contentId}</@ofbizUrl>" alt="user">
<#else>

    <svg class="appbar-btn-img" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 256 256;" xml:space="preserve" >
        <g>
            <circle cx="256" cy="128" r="128"/>
            <path d="M256,298.667c-105.99,0.118-191.882,86.01-192,192C64,502.449,73.551,512,85.333,512h341.333   c11.782,0,21.333-9.551,21.333-21.333C447.882,384.677,361.99,298.784,256,298.667z"/>
        </g>
    </svg>
</#if>
    <div id="user-details" style="display:none;">
        <p id="user-name" <#if userLogin.partyId??>onclick="javascript:location.href='/partymgr/control/viewprofile?partyId=${userLogin.partyId}'"</#if>>
            <#if (person.firstName)?? && (person.lastName)??>
                ${person.firstName}&nbsp;<strong> ${person.lastName?upper_case}</strong>
            <#else>
                <strong>${userLogin.userLoginId}</strong>
            </#if>
        </p>

        <a id="user-lang" href="<@ofbizUrl>ListLocales</@ofbizUrl>">
            <#assign userLang = locale.toString()>
            <#assign flagLang = locale.toString()?keep_after_last("_")>
            <#if "en" == userLang || "fr" == userLang || "zh" == userLang || "th" == userLang>
                <#if "en" == userLang><#assign flagLang = "GB"></#if>
                <#if "fr" == userLang><#assign flagLang = "FR"></#if>
                <#if "zh" == userLang><#assign flagLang = "SG"></#if>
                <#if "th" == userLang><#assign flagLang = "TH"></#if>
            <#elseif 2 == userLang?length><#assign flagLang = "UN"></#if>
                <span class="flag-icon flag-icon-<#if userLang?size <= 2>${userLang}<#else>${flagLang?lower_case}</#if>"><#if userLang?size <= 2>${userLang}<#else>${flagLang}</#if></span>
        </a>
        <a class="dark-color" title="${uiLabelMap.CommonHelp}" href="${userDocUri!Static["org.apache.ofbiz.entity.util.EntityUtilProperties"].getPropertyValue("general", "userDocUri", delegator)}<#if helpAnchor??>#${helpAnchor}</#if>" target="help">${uiLabelMap.CommonHelp}</a>
     <!--   <a id="visual-theme" class="user-pref-btn" href="<@ofbizUrl>ListVisualThemes</@ofbizUrl>">${uiLabelMap.CommonVisualThemes}</a>-->
        <a id="logout" class="user-pref-btn" href="<@ofbizUrl>logout</@ofbizUrl>">${uiLabelMap.CommonLogout}</a>
    </div>
</div>
<?xml version="1.0" encoding="UTF-8"?>
<!-- Generator: Adobe Illustrator 25.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->

