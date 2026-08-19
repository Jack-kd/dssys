.class public final Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/AdSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/AdSetting;",
        "Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public can_expire_reload:Ljava/lang/Boolean;

.field public disable_download_listener:Ljava/lang/Boolean;

.field public expire_reload_count:Ljava/lang/Integer;

.field public in_app:Ljava/lang/Boolean;

.field public link_actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/rtb/LinkAction;",
            ">;"
        }
    .end annotation
.end field

.field public max_redirect_count:Ljava/lang/Integer;

.field public retry_count:Ljava/lang/Integer;

.field public rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

.field public scheme_white_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sensitivity:Ljava/lang/Integer;

.field public shake_count:Ljava/lang/Integer;

.field public shake_time_threshold:Ljava/lang/Integer;

.field public shake_trigger_type:Ljava/lang/Integer;

.field public single_native_setting:Lcom/sigmob/sdk/base/models/rtb/SingleNativeAdSetting;

.field public splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

.field public widget_interval_time:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_RETRY_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->retry_count:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_IN_APP:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->in_app:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_DISABLE_DOWNLOAD_LISTENER:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->disable_download_listener:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_SENSITIVITY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->sensitivity:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_CAN_EXPIRE_RELOAD:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->can_expire_reload:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_EXPIRE_RELOAD_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->expire_reload_count:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_SHAKE_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->shake_count:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_SHAKE_TIME_THRESHOLD:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->shake_time_threshold:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_SHAKE_TRIGGER_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->shake_trigger_type:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_WIDGET_INTERVAL_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->widget_interval_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->DEFAULT_MAX_REDIRECT_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->max_redirect_count:Ljava/lang/Integer;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->scheme_white_list:Ljava/util/List;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->link_actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/AdSetting;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/AdSetting;
    .locals 20

    .line 2
    move-object/from16 v0, p0

    new-instance v1, Lcom/sigmob/sdk/base/models/rtb/AdSetting;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->retry_count:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->single_native_setting:Lcom/sigmob/sdk/base/models/rtb/SingleNativeAdSetting;

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->in_app:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->disable_download_listener:Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->scheme_white_list:Ljava/util/List;

    iget-object v9, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->sensitivity:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->link_actions:Ljava/util/List;

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->can_expire_reload:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->expire_reload_count:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->shake_count:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->shake_time_threshold:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->shake_trigger_type:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->widget_interval_time:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->max_redirect_count:Ljava/lang/Integer;

    invoke-super {v0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v18

    move-object/from16 v19, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    invoke-direct/range {v1 .. v18}, Lcom/sigmob/sdk/base/models/rtb/AdSetting;-><init>(Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/rtb/SingleNativeAdSetting;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public can_expire_reload(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->can_expire_reload:Ljava/lang/Boolean;

    return-object p0
.end method

.method public disable_download_listener(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->disable_download_listener:Ljava/lang/Boolean;

    return-object p0
.end method

.method public expire_reload_count(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->expire_reload_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public in_app(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->in_app:Ljava/lang/Boolean;

    return-object p0
.end method

.method public link_actions(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/rtb/LinkAction;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->link_actions:Ljava/util/List;

    return-object p0
.end method

.method public max_redirect_count(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->max_redirect_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public retry_count(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->retry_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public rv_setting(Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->rv_setting:Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    return-object p0
.end method

.method public scheme_white_list(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->scheme_white_list:Ljava/util/List;

    return-object p0
.end method

.method public sensitivity(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->sensitivity:Ljava/lang/Integer;

    return-object p0
.end method

.method public shake_count(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->shake_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public shake_time_threshold(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->shake_time_threshold:Ljava/lang/Integer;

    return-object p0
.end method

.method public shake_trigger_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->shake_trigger_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public single_native_setting(Lcom/sigmob/sdk/base/models/rtb/SingleNativeAdSetting;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->single_native_setting:Lcom/sigmob/sdk/base/models/rtb/SingleNativeAdSetting;

    return-object p0
.end method

.method public splash_setting(Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->splash_setting:Lcom/sigmob/sdk/base/models/rtb/SplashAdSetting;

    return-object p0
.end method

.method public widget_interval_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AdSetting$Builder;->widget_interval_time:Ljava/lang/Integer;

    return-object p0
.end method
