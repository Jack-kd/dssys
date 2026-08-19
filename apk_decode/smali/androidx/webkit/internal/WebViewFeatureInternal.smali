.class public Landroidx/webkit/internal/WebViewFeatureInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnsafeOptInUsageError"
    }
.end annotation


# static fields
.field public static final ADD_QUIC_HINTS_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$T;

.field public static final ASYNC_WEBVIEW_STARTUP:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ATTRIBUTION_REGISTRATION_BEHAVIOR:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final BACK_FORWARD_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final BACK_FORWARD_CACHE_SETTINGS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final COOKIE_INTERCEPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/ApiFeature$M;

.field public static final CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final DEFAULT_TRAFFICSTATS_TAGGING:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final DELETE_BROWSING_DATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final FORCE_DARK:Landroidx/webkit/internal/ApiFeature$Q;

.field public static final FORCE_DARK_STRATEGY:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final GET_COOKIE_INFO:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final GET_VARIATIONS_HEADER:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

.field public static final GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

.field public static final GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/ApiFeature$Q;

.field public static final HYPERLINK_CONTEXT_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final MULTI_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final MUTE_AUDIO:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final NAVIGATION_CALLBACK_BASIC:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final NAVIGATION_LISTENER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/ApiFeature$M;

.field public static final ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/webkit/Profile$ExperimentalOriginMatchedHeader;
    .end annotation
.end field

.field public static final PAYMENT_REQUEST:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final POST_WEB_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final PRECONNECT:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PRERENDER_WITH_URL:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROVIDER_WEAKLY_REF_WEBVIEW:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROXY_OVERRIDE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROXY_OVERRIDE_REVERSE_BYPASS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/ApiFeature$M;

.field public static final RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/ApiFeature$M;

.field public static final REQUESTED_WITH_HEADER_ALLOW_LIST:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation
.end field

.field public static final SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/ApiFeature$O;

.field public static final SAFE_BROWSING_HIT:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAVE_STATE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SPECULATIVE_LOADING:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final SPECULATIVE_LOADING_CONFIG:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

.field public static final STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_SET_PROFILES_TO_LOAD:Landroidx/webkit/internal/StartupApiFeature$NoFramework;
    .annotation build Landroidx/webkit/WebViewCompat$ExperimentalAsyncStartUp;
    .end annotation
.end field

.field public static final STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE:Landroidx/webkit/internal/StartupApiFeature$NoFramework;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final START_SAFE_BROWSING:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$P;

.field public static final USER_AGENT_METADATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final USER_AGENT_METADATA_FORM_FACTORS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WARM_UP_RENDERER_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/webkit/Profile$ExperimentalWarmUpRendererProcess;
    .end annotation
.end field

.field public static final WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final WEBVIEW_MEDIA_INTEGRITY_API_STATUS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_AUTHENTICATION:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_MESSAGE_ARRAY_BUFFER:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/ApiFeature$N;

.field public static final WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$Q;

.field public static final WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/ApiFeature$Q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "VISUAL_STATE_CALLBACK"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

    .line 2
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "OFF_SCREEN_PRERASTER"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/ApiFeature$M;

    .line 3
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O;

    const-string v1, "SAFE_BROWSING_ENABLE"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/ApiFeature$O;

    .line 4
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "DISABLED_ACTION_MODE_MENU_ITEMS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$N;

    .line 5
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "START_SAFE_BROWSING"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->START_SAFE_BROWSING:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 6
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_WHITELIST"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 7
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v2, "SAFE_BROWSING_ALLOWLIST"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 8
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    invoke-direct {v0, v2, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 9
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    invoke-direct {v0, v2, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 10
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 11
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_BASIC_USAGE"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$N;

    .line 12
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_CACHE_MODE"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/ApiFeature$N;

    .line 13
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_CONTENT_ACCESS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

    .line 14
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_FILE_ACCESS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

    .line 15
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/ApiFeature$N;

    .line 16
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/ApiFeature$N;

    .line 17
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "RECEIVE_WEB_RESOURCE_ERROR"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/ApiFeature$M;

    .line 18
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "RECEIVE_HTTP_ERROR"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/ApiFeature$M;

    .line 19
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/ApiFeature$N;

    .line 20
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_HIT"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_HIT:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 21
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    const-string v1, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/ApiFeature$N;

    .line 22
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/ApiFeature$M;

    .line 23
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_RESOURCE_ERROR_GET_CODE"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/ApiFeature$M;

    .line 24
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    const-string v2, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 25
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_RESPONSE_PROCEED"

    const-string v2, "SAFE_BROWSING_RESPONSE_PROCEED"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 26
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    const-string v1, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    const-string v2, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 27
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_MESSAGE_PORT_POST_MESSAGE"

    const-string v2, "WEB_MESSAGE_PORT_POST_MESSAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 28
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_MESSAGE_PORT_CLOSE"

    const-string v2, "WEB_MESSAGE_PORT_CLOSE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/ApiFeature$M;

    .line 29
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    const-string v2, "WEB_MESSAGE_ARRAY_BUFFER"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_ARRAY_BUFFER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 30
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    const-string v2, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

    .line 31
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "CREATE_WEB_MESSAGE_CHANNEL"

    const-string v2, "CREATE_WEB_MESSAGE_CHANNEL"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/ApiFeature$M;

    .line 32
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "POST_WEB_MESSAGE"

    const-string v2, "POST_WEB_MESSAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->POST_WEB_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 33
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    const-string v1, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    const-string v2, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 34
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O;

    const-string v1, "GET_WEB_VIEW_CLIENT"

    const-string v2, "GET_WEB_VIEW_CLIENT"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

    .line 35
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O;

    const-string v1, "GET_WEB_CHROME_CLIENT"

    const-string v2, "GET_WEB_CHROME_CLIENT"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

    .line 36
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    const-string v1, "GET_WEB_VIEW_RENDERER"

    const-string v2, "GET_WEB_VIEW_RENDERER"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/ApiFeature$Q;

    .line 37
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    const-string v1, "WEB_VIEW_RENDERER_TERMINATE"

    const-string v2, "WEB_VIEW_RENDERER_TERMINATE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/ApiFeature$Q;

    .line 38
    new-instance v0, Landroidx/webkit/internal/ApiFeature$P;

    const-string v1, "TRACING_CONTROLLER_BASIC_USAGE"

    const-string v2, "TRACING_CONTROLLER_BASIC_USAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$P;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$P;

    .line 39
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$P;

    const-string v1, "STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX"

    const-string v2, "STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$P;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

    .line 40
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_SET_DIRECTORY_BASE_PATHS"

    const-string v2, "STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 41
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES"

    const-string v2, "STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 42
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    const-string v1, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    const-string v2, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$Q;

    .line 43
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$1;

    const-string v1, "ALGORITHMIC_DARKENING"

    const-string v2, "ALGORITHMIC_DARKENING"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/WebViewFeatureInternal$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$T;

    .line 44
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PROXY_OVERRIDE"

    const-string v2, "PROXY_OVERRIDE:3"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 45
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "MULTI_PROCESS"

    const-string v2, "MULTI_PROCESS_QUERY"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 46
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    const-string v1, "FORCE_DARK"

    const-string v2, "FORCE_DARK"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/ApiFeature$Q;

    .line 47
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "FORCE_DARK_STRATEGY"

    const-string v2, "FORCE_DARK_BEHAVIOR"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK_STRATEGY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 48
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEB_MESSAGE_LISTENER"

    const-string v2, "WEB_MESSAGE_LISTENER"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 49
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "DOCUMENT_START_SCRIPT"

    const-string v2, "DOCUMENT_START_SCRIPT:1"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 50
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PROXY_OVERRIDE_REVERSE_BYPASS"

    const-string v2, "PROXY_OVERRIDE_REVERSE_BYPASS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE_REVERSE_BYPASS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 51
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "GET_VARIATIONS_HEADER"

    const-string v2, "GET_VARIATIONS_HEADER"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_VARIATIONS_HEADER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 52
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    const-string v2, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 53
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "GET_COOKIE_INFO"

    const-string v2, "GET_COOKIE_INFO"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_COOKIE_INFO:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 54
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    const-string v2, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->REQUESTED_WITH_HEADER_ALLOW_LIST:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 55
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "USER_AGENT_METADATA"

    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->USER_AGENT_METADATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 56
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$2;

    const-string v2, "USER_AGENT_METADATA_FORM_FACTORS"

    invoke-direct {v0, v2, v1}, Landroidx/webkit/internal/WebViewFeatureInternal$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->USER_AGENT_METADATA_FORM_FACTORS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 57
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$3;

    const-string v1, "MULTI_PROFILE"

    const-string v2, "MULTI_PROFILE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/WebViewFeatureInternal$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 58
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "ATTRIBUTION_REGISTRATION_BEHAVIOR"

    const-string v2, "ATTRIBUTION_BEHAVIOR"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ATTRIBUTION_REGISTRATION_BEHAVIOR:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 59
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEBVIEW_MEDIA_INTEGRITY_API_STATUS"

    const-string v2, "WEBVIEW_INTEGRITY_API_STATUS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_MEDIA_INTEGRITY_API_STATUS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 60
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "MUTE_AUDIO"

    const-string v2, "MUTE_AUDIO"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MUTE_AUDIO:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 61
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEB_AUTHENTICATION"

    const-string v2, "WEB_AUTHENTICATION"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_AUTHENTICATION:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 62
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "SPECULATIVE_LOADING_STATUS"

    const-string v2, "SPECULATIVE_LOADING"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SPECULATIVE_LOADING:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 63
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "BACK_FORWARD_CACHE"

    const-string v2, "BACK_FORWARD_CACHE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 64
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "BACK_FORWARD_CACHE_SETTINGS"

    const-string v2, "BACK_FORWARD_CACHE_SETTINGS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE_SETTINGS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 65
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "DELETE_BROWSING_DATA"

    const-string v2, "WEB_STORAGE_DELETE_BROWSING_DATA"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DELETE_BROWSING_DATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 66
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$4;

    const-string v1, "PREFETCH_URL_V5"

    const-string v2, "PREFETCH_URL_V5"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/WebViewFeatureInternal$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 67
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "IMPLEMENTATION_ONLY_FEATURE"

    const-string v2, "ASYNC_WEBVIEW_STARTUP"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ASYNC_WEBVIEW_STARTUP:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 68
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "IMPLEMENTATION_ONLY_FEATURE"

    const-string v2, "ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 69
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "DEFAULT_TRAFFICSTATS_TAGGING"

    const-string v2, "DEFAULT_TRAFFICSTATS_TAGGING"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DEFAULT_TRAFFICSTATS_TAGGING:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 70
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PRERENDER_URL_V2"

    const-string v2, "PRERENDER_URL_V3"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PRERENDER_WITH_URL:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 71
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "SPECULATIVE_LOADING_CONFIG_V2"

    const-string v2, "SPECULATIVE_LOADING_CONFIG_V2"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SPECULATIVE_LOADING_CONFIG:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 72
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "SAVE_STATE"

    const-string v2, "SAVE_STATE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAVE_STATE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 73
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE"

    const-string v2, "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->NAVIGATION_CALLBACK_BASIC:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 74
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "NAVIGATION_LISTENER_V1"

    const-string v2, "WEB_VIEW_NAVIGATION_LISTENER_V1"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->NAVIGATION_LISTENER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 75
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PROVIDER_WEAKLY_REF_WEBVIEW"

    const-string v2, "PROVIDER_WEAKLY_REF_WEBVIEW"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROVIDER_WEAKLY_REF_WEBVIEW:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 76
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PAYMENT_REQUEST"

    const-string v2, "PAYMENT_REQUEST"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PAYMENT_REQUEST:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 77
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WEBVIEW_BUILDER_EXPERIMENTAL_V1"

    const-string v2, "WEBVIEW_BUILDER_V1"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 78
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "COOKIE_INTERCEPT"

    const-string v2, "COOKIE_INTERCEPT"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->COOKIE_INTERCEPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 79
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "WARM_UP_RENDERER_PROCESS"

    const-string v2, "WARM_UP_RENDERER_PROCESS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WARM_UP_RENDERER_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 80
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "ORIGIN_MATCHED_HEADERS"

    const-string v2, "EXTRA_HEADER_FOR_ORIGINS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 81
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "CUSTOM_REQUEST_HEADERS"

    const-string v2, "CUSTOM_REQUEST_HEADERS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 82
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_SET_PROFILES_TO_LOAD"

    const-string v2, "STARTUP_FEATURE_SET_PROFILES_TO_LOAD"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_PROFILES_TO_LOAD:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 83
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE"

    const-string v2, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 84
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const-string v1, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2"

    const-string v2, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 85
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "PRECONNECT"

    const-string v2, "PRECONNECT"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PRECONNECT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 86
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "ADD_QUIC_HINTS"

    const-string v2, "ADD_QUIC_HINTS_V1"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ADD_QUIC_HINTS_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 87
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    const-string v1, "HYPERLINK_CONTEXT_MENU_ITEMS"

    const-string v2, "HYPERLINK_CONTEXT_MENU_ITEMS"

    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->HYPERLINK_CONTEXT_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static isStartupFeatureSupported(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/webkit/internal/StartupApiFeature;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/webkit/internal/WebViewFeatureInternal;->isStartupFeatureSupported(Ljava/lang/String;Ljava/util/Collection;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isStartupFeatureSupported(Ljava/lang/String;Ljava/util/Collection;Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/webkit/internal/StartupApiFeature;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/internal/StartupApiFeature;

    .line 4
    invoke-virtual {v1}, Landroidx/webkit/internal/StartupApiFeature;->getPublicFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/webkit/internal/StartupApiFeature;

    .line 8
    invoke-virtual {p1, p2}, Landroidx/webkit/internal/StartupApiFeature;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown feature "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/webkit/internal/ApiFeature;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupported(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/webkit/internal/ConditionallySupportedFeature;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 4
    invoke-interface {v1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->getPublicFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 8
    invoke-interface {p1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
