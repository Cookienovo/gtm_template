___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Cookienovo",
  "brand": {
    "id": "github.com_Cookienovo",
    "displayName": "Cookienovo"
  },
  "description": "Cookie banner (CMP) by Cookienovo\nhttps://cookienovo.com/",
  "containerContexts": [
    "WEB"
  ],
  "categories": [
    "TAG_MANAGEMENT",
    "UTILITY"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "id",
    "displayName": "Site token",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "STRING_LENGTH",
        "args": [
          40,
          60
        ]
      }
    ],
    "clearOnCopy": true,
    "help": "Site token can be found in your Cookienovo"
  },
  {
    "type": "SELECT",
    "name": "consent_mode_enabled",
    "displayName": "Consent Mode v2",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": false,
        "displayValue": "Disabled"
      },
      {
        "value": true,
        "displayValue": "Enabled"
      }
    ],
    "simpleValueType": true,
    "alwaysInSummary": true,
    "defaultValue": true,
    "help": "If enabled, consent mode v2 will be supported. The default state will be set when the tag is loaded. If consent has been granted, consent update will also be called with the appropriate permissions."
  },
  {
    "type": "GROUP",
    "name": "default_consents",
    "displayName": "Default consent states",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "default_consent_functionality",
        "displayName": "Functionality",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "denied"
          },
          {
            "value": "granted",
            "displayValue": "granted"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "denied",
        "alwaysInSummary": true,
        "help": "Consent state for functionality_storage"
      },
      {
        "type": "SELECT",
        "name": "default_consent_marketing",
        "displayName": "Marketing",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "denied"
          },
          {
            "value": "granted",
            "displayValue": "granted"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "denied",
        "alwaysInSummary": true,
        "help": "Consent state for ad_storage, ad_personalization and ad_user_data"
      },
      {
        "type": "SELECT",
        "name": "default_consent_analytics",
        "displayName": "Analytics",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "denied"
          },
          {
            "value": "granted",
            "displayValue": "granted"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "denied",
        "alwaysInSummary": true,
        "help": "Consent state for analytics_storage"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "google_tag_configs",
    "displayName": "Google Tag Configs",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "TEXT",
        "name": "wait_for_update",
        "displayName": "Wait for update",
        "simpleValueType": true,
        "defaultValue": 2000,
        "alwaysInSummary": true,
        "canBeEmptyString": false,
        "help": "When wait_for_update is set to some value, the tag will pause its execution until updated consent state is detected or timeout occurs. This helps ensure accurate consent-based behavior when tags fire before consent is captured.",
        "valueValidators": [
          {
            "type": "NON_NEGATIVE_NUMBER"
          }
        ],
        "valueHint": "2000",
        "valueUnit": "ms"
      },
      {
        "type": "SELECT",
        "name": "url_passthrough",
        "displayName": "URL passthrough",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": false,
            "displayValue": "false"
          },
          {
            "value": true,
            "displayValue": "true"
          }
        ],
        "simpleValueType": true,
        "defaultValue": false,
        "help": "When a visitor has cookies disabled (ad_storage or analytics_storage set to \u0027denied\u0027), URL passthrough can transmit ad click information and analytics data across pages using URL parameters."
      },
      {
        "type": "SELECT",
        "name": "ads_data_redaction",
        "displayName": "Google Ads Data Redaction",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": false,
            "displayValue": "false"
          },
          {
            "value": true,
            "displayValue": "true"
          }
        ],
        "simpleValueType": true,
        "help": "When ad_storage is denied, no new advertising cookies are set and existing third-party cookies from Google domains won\u0027t be used, though the full URL including ad click data will still be sent to Google. To further protect user privacy, enabling ads_data_redaction will redact ad click identifiers in network requests when ad_storage is denied.",
        "defaultValue": false
      },
      {
        "type": "PARAM_TABLE",
        "name": "region_specific",
        "displayName": "Region specific",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "region",
              "displayName": "Region",
              "simpleValueType": true,
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ],
              "help": "Code of region in ISO 3166-2 format, like \"US\", \"SK\", etc.",
              "valueHint": "ES,US-AK"
            },
            "isUnique": true
          },
          {
            "param": {
              "type": "SELECT",
              "name": "functionality",
              "displayName": "functional (functionality_storage)",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "denied"
                },
                {
                  "value": "granted",
                  "displayValue": "granted"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied",
              "help": "Default state of functionality_storage in given region"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "analytics",
              "displayName": "analytics (analytics_storage)",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "denied"
                },
                {
                  "value": "granted",
                  "displayValue": "granted"
                }
              ],
              "simpleValueType": true,
              "help": "Default state of analytics_storage in given region",
              "defaultValue": "denied"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "marketing",
              "displayName": "marketing (ad_storage, ad_personalization, ad_user_data)",
              "macrosInSelect": true,
              "selectItems": [
                {
                  "value": "denied",
                  "displayValue": "denied"
                },
                {
                  "value": "granted",
                  "displayValue": "granted"
                }
              ],
              "simpleValueType": true,
              "defaultValue": "denied",
              "help": "Default state of ad_storage, ad_personalization and ad_user_data in given region"
            },
            "isUnique": false
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// https://developers.google.com/tag-platform/tag-manager/templates/consent-apis
// https://developers.google.com/tag-platform/tag-manager/templates/api#injectscript

// https://cookienovo.com/app/sites/35be4000-6e4e-47f5-aa30-f29b03492afb
// https://kisk.sabatka.net/?dltype=gtm&gtmid=GTM-NM7B43FK

const log = require('logToConsole');
const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const getCookieValues = require('getCookieValues');
const injectScript = require('injectScript');
const Object = require('Object');
const gtagSet = require('gtagSet');
const createQueue = require('createQueue');
const setInWindow = require('setInWindow');


setInWindow('cookienovo_token', data.id, true);


function loadConsentFromCookie(consent) {
  var status = getCookieValues(consent);
  if (status.length === 0) return undefined;
  return (status[0] == 1) ? 'granted' : 'denied'; 
}



const defaultConsentState = {
  'ad_storage': data.default_consent_marketing,
  'ad_user_data': data.default_consent_marketing,
  'ad_personalization': data.default_consent_marketing,
  'analytics_storage': data.default_consent_analytics,
  'functionality_storage': data.default_consent_functionality,
//  'personalization_storage': data.default_consent_functionality,   // @TODO
//  'security_storage': data.default_consent_functionality,   // @TODO
  'wait_for_update': data.wait_for_update
};


if (data.consent_mode_enabled) {
  gtagSet('ads_data_redaction', data.ads_data_redaction);
  gtagSet('url_passthrough', data.url_passthrough);
  gtagSet('developer_id.dMjZhMT', true);
  log("Cookienovo: setting default state", defaultConsentState);
  setDefaultConsentState(defaultConsentState);

  data.region_specific = data.region_specific || [];
  for (let i = 0; i < data.region_specific.length; i++) {
    let rcs = data.region_specific[i];
    let regionConsentState = {
      'region': rcs.region.split(','),
      'ad_storage': rcs.marketing,
      'ad_user_data': rcs.marketing,
      'ad_personalization': rcs.marketing,
      'analytics_storage': rcs.analytics,
      'functionality_storage': rcs.functionality,
//    'personalization_storage': rcs.functionality,  // @TODO - toto dořešit
//    'security_storage': rcs.functionality,  // @TODO - toto dořešit
    };
    setDefaultConsentState(regionConsentState);
    log("Cookienovo: setting default state for region", regionConsentState);
  }
}



const cookienovoState = {
  'analytics': loadConsentFromCookie('cn-category-analytics'),
  'marketing': loadConsentFromCookie('cn-category-marketing'),
  'functionality': loadConsentFromCookie('cn-category-functional')
};
let updatedState = {};
if (cookienovoState.analytics !== undefined && cookienovoState.analytics !== data.default_consent_analytics) {
  updatedState.analytics_storage = cookienovoState.analytics;
}
if (cookienovoState.marketing !== undefined && cookienovoState.marketing !== data.default_consent_marketing) {
  updatedState.ad_storage = cookienovoState.marketing;
  updatedState.ad_user_data = cookienovoState.marketing;
  updatedState.ad_personalization = cookienovoState.marketing;
}
if (cookienovoState.functionality !== undefined && cookienovoState.functionality !== data.default_consent_functionality) {
  updatedState.functionality_storage = cookienovoState.functionality;
//  updatedState.personalization_storage = cookienovoState.functionality;
//  updatedState.security_storage = cookienovoState.functionality;
}
if (Object.keys(updatedState).length > 0) {
  log("Cookienovo: update consent mode with state", updatedState);
  if (data.consent_mode_enabled) {
    updateConsentState(updatedState);
  } else {
    const dataLayerPush = createQueue('dataLayer');
    dataLayerPush({
      'consent': updatedState,
      'event': 'cookie_consent_updated'
    });
  }
}


const url = 'https://cookienovo.com/assets/client.js';
injectScript(url, () => {
  log("Cookienovo: stript loaded", data);
  setInWindow('cookienovo_injected', true, true);
  data.gtmOnSuccess();
}, () => {
  log("Cookienovo: stript loading failed", data);
  data.gtmOnFailure();
});


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "cn-category-analytics"
              },
              {
                "type": 1,
                "string": "cn-category-functional"
              },
              {
                "type": 1,
                "string": "cn-category-marketing"
              },
              {
                "type": 1,
                "string": "cn-category-necessary"
              },
              {
                "type": 1,
                "string": "cn-consent-time"
              },
              {
                "type": 1,
                "string": "cn-dismissed"
              },
              {
                "type": 1,
                "string": "consent_cookies"
              },
              {
                "type": 1,
                "string": "cookienovolanguage"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wait_for_update"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "url_passthrough"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "region"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://cookienovo.com/assets/client.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ads_data_redaction"
              },
              {
                "type": 1,
                "string": "url_passthrough"
              },
              {
                "type": 1,
                "string": "developer_id.dMjZhMT"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cookienovo_token"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cookienovo_injected"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Script was loaded
  code: |-
    runCode(mockData);
    assertApi('gtmOnSuccess').wasCalled();
- name: Token was set
  code: |-
    runCode(mockData);

    assertApi('setInWindow').wasCalledWith('cookienovo_token', '1234567890ABCDEF1234567890ABCDEF1234567890ABCDEF', true);
    // assertApi('setInWindow').wasCalledWith('cookienovo_injected', true, true);
- name: Default consent status was set
  code: |-
    runCode(mockData);
    assertApi('setDefaultConsentState').wasCalledWith({
      "ad_storage":"denied",
      "ad_user_data":"denied",
      "ad_personalization":"denied",
      "analytics_storage":"denied",
      "functionality_storage": "denied",
      "wait_for_update": 2000
    });
- name: Set Google configs
  code: |-
    runCode(mockData);
    assertApi('gtagSet').wasCalledWith('ads_data_redaction', false);
    assertApi('gtagSet').wasCalledWith('url_passthrough', true);
- name: Developer ID was set
  code: |-
    runCode(mockData);
    assertApi('gtagSet').wasCalledWith('developer_id.dMjZhMT', true);
- name: Consent was granted
  code: |-
    mock('getCookieValues', (name) => {
      switch (name) {
        case 'cn-category-analytics':
        case 'cn-category-functional':
        case 'cn-category-marketing':
          return ['1'];
      }
      return [];
    });

    runCode(mockData);

    assertApi('updateConsentState').wasCalledWith({
      "ad_storage":"granted",
      "ad_user_data":"granted",
      "ad_personalization":"granted",
      "analytics_storage":"granted",
      "functionality_storage": "granted"
    });
- name: Regional settings
  code: |-
    mockData.region_specific = [
      {"region":"SK","functionality":"granted","analytics":"denied","marketing":"denied"},
      {"region":"ES,PT","functionality":"granted","analytics":"granted","marketing":"denied"},
      {"region":"US-AS","functionality":"granted","analytics":"granted","marketing":"granted"}
    ];

    runCode(mockData);

    // default consent state
    assertApi('setDefaultConsentState').wasCalledWith({
      "ad_storage":"denied",
      "ad_user_data":"denied",
      "ad_personalization":"denied",
      "analytics_storage":"denied",
      "functionality_storage": "denied",
      "wait_for_update": 2000
    });

    assertApi('setDefaultConsentState').wasCalledWith({
      "ad_storage":"denied",
      "ad_user_data":"denied",
      "ad_personalization":"denied",
      "analytics_storage":"denied",
      "functionality_storage": "granted",
      "region": ["SK"]
    });


    assertApi('setDefaultConsentState').wasCalledWith({
      "ad_storage":"denied",
      "ad_user_data":"denied",
      "ad_personalization":"denied",
      "analytics_storage":"granted",
      "functionality_storage": "granted",
      "region": ["ES", "PT"]
    });

    assertApi('setDefaultConsentState').wasCalledWith({
      "ad_storage":"granted",
      "ad_user_data":"granted",
      "ad_personalization":"granted",
      "analytics_storage":"granted",
      "functionality_storage": "granted",
      "region": ["US-AS"]
    });
setup: |-
  let mockData = {
    'id': '1234567890ABCDEF1234567890ABCDEF1234567890ABCDEF',
    'consent_mode_enabled': true,
    'default_consent_functionality': 'denied',
    'default_consent_analytics': 'denied',
    'default_consent_marketing': 'denied',
    'wait_for_update': 2000,
    'ads_data_redaction': false,
    'url_passthrough': true,
  };

  let cookies = {};

  mock('injectScript', (url, onSuccess, onError) => {
    onSuccess();
  });

  mock('getCookieValues', (name) => {
    return [];
  });


___NOTES___

Created on 3. 4. 2025 15:23:12


