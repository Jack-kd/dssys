.class public final Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobAndroid;",
        "Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public apk_expired_time:Ljava/lang/Integer;

.field public disableUpAppInfo:Ljava/lang/Boolean;

.field public disable_boot_mark:Ljava/lang/Boolean;

.field public disable_install_monitor:Ljava/lang/Boolean;

.field public disable_up_oaid:Ljava/lang/Integer;

.field public enable_app_list:Ljava/lang/Integer;

.field public enable_okhttp3:Ljava/lang/Boolean;

.field public enable_open_pkg_dir_list:Ljava/lang/Boolean;

.field public enable_open_pkg_list:Ljava/lang/Boolean;

.field public enable_permission:Ljava/lang/Boolean;

.field public enable_report_crash:Ljava/lang/Boolean;

.field public lock_play:Ljava/lang/Boolean;

.field public oaid_api_is_disable:Ljava/lang/Boolean;

.field public open_pkg_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public report_log:Ljava/lang/Integer;

.field public s2s_token_timeout:Ljava/lang/Integer;

.field public screen_keep:Ljava/lang/Boolean;

.field public up_wifi_list_interval:Ljava/lang/Integer;

.field public use_web_source_cache:Ljava/lang/Boolean;

.field public web_source_cache_expiration_time:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->open_pkg_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apk_expired_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->apk_expired_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;
    .locals 24

    .line 2
    move-object/from16 v0, p0

    new-instance v1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->report_log:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_up_oaid:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_permission:Ljava/lang/Boolean;

    iget-object v7, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->apk_expired_time:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_report_crash:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->oaid_api_is_disable:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_boot_mark:Ljava/lang/Boolean;

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_okhttp3:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_app_list:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->lock_play:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->screen_keep:Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->open_pkg_list:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->use_web_source_cache:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->web_source_cache_expiration_time:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_install_monitor:Ljava/lang/Boolean;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_open_pkg_list:Ljava/lang/Boolean;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->s2s_token_timeout:Ljava/lang/Integer;

    invoke-super {v0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v22

    move-object/from16 v23, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v23

    invoke-direct/range {v1 .. v22}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    return-object p0
.end method

.method public disable_boot_mark(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_boot_mark:Ljava/lang/Boolean;

    return-object p0
.end method

.method public disable_install_monitor(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_install_monitor:Ljava/lang/Boolean;

    return-object p0
.end method

.method public disable_up_oaid(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_up_oaid:Ljava/lang/Integer;

    return-object p0
.end method

.method public enable_app_list(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_app_list:Ljava/lang/Integer;

    return-object p0
.end method

.method public enable_okhttp3(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_okhttp3:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_open_pkg_dir_list(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_open_pkg_list(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_open_pkg_list:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_permission(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_permission:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_report_crash(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_report_crash:Ljava/lang/Boolean;

    return-object p0
.end method

.method public lock_play(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->lock_play:Ljava/lang/Boolean;

    return-object p0
.end method

.method public oaid_api_is_disable(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->oaid_api_is_disable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public open_pkg_list(Ljava/util/List;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->open_pkg_list:Ljava/util/List;

    return-object p0
.end method

.method public report_log(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->report_log:Ljava/lang/Integer;

    return-object p0
.end method

.method public s2s_token_timeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->s2s_token_timeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public screen_keep(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->screen_keep:Ljava/lang/Boolean;

    return-object p0
.end method

.method public up_wifi_list_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public use_web_source_cache(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->use_web_source_cache:Ljava/lang/Boolean;

    return-object p0
.end method

.method public web_source_cache_expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->web_source_cache_expiration_time:Ljava/lang/Integer;

    return-object p0
.end method
