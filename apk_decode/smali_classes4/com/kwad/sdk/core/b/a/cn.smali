.class public final Lcom/kwad/sdk/core/b/a/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/sdk/core/adlog/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/core/adlog/a$a;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v0, "ad_retry_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLf:I

    .line 3
    const-string v0, "template_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->templateId:Ljava/lang/String;

    .line 4
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->templateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 5
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->templateId:Ljava/lang/String;

    .line 6
    :cond_1
    const-string v1, "template_sub_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLg:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLg:Ljava/lang/String;

    .line 9
    :cond_2
    const-string v1, "default_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLh:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLh:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLh:Ljava/lang/String;

    .line 12
    :cond_3
    const-string v1, "tk_template_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLi:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLi:Ljava/lang/String;

    .line 15
    :cond_4
    const-string v1, "tk_template_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLj:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLj:Ljava/lang/String;

    .line 18
    :cond_5
    new-instance v1, Ljava/lang/Integer;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "tk_publish_type"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->tkPublishType:I

    .line 19
    const-string v1, "template_show_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLl:Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLl:Ljava/lang/String;

    .line 22
    :cond_6
    new-instance v1, Ljava/lang/Integer;

    const-string v3, "3"

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "network_download_status"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLm:I

    .line 23
    const-string v1, "award_task_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLn:I

    .line 24
    const-string v1, "jumps_liveroom_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLo:I

    .line 25
    const-string v1, "universe_feature_freg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLp:I

    .line 26
    const-string v1, "replace_url_succ"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLq:I

    .line 27
    const-string v1, "is_dp_opt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    .line 28
    const-string v1, "component_module"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLs:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLs:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLs:Ljava/lang/String;

    .line 31
    :cond_7
    const-string v1, "is_carousel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLu:I

    .line 32
    const-string v1, "is_special_preload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLv:I

    .line 33
    const-string v1, "card_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLw:I

    .line 34
    const-string v1, "is_closure"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLx:I

    .line 35
    const-string v1, "is_click_invoked"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLy:I

    .line 36
    const-string v1, "authorization_status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLz:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLz:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 38
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLz:Ljava/lang/String;

    .line 39
    :cond_8
    const-string v1, "login_source"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLA:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    iput-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLA:Ljava/lang/String;

    .line 42
    :cond_9
    const-string v0, "is_login"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLB:I

    .line 43
    const-string v0, "interception_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLC:I

    .line 44
    const-string v0, "interception_reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLD:I

    .line 45
    const-string v0, "coupon_receive_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLE:I

    .line 46
    const-string v0, "deeplink_evocation_source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLG:I

    return-void
.end method

.method private static b(Lcom/kwad/sdk/core/adlog/a$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLf:I

    if-eqz v0, :cond_1

    .line 4
    const-string v1, "ad_retry_type"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->templateId:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    const-string v0, "template_id"

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->templateId:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLg:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    const-string v0, "template_sub_id"

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLg:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLh:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    const-string v0, "default_type"

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLh:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLi:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    const-string v0, "tk_template_id"

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLi:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLj:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    const-string v0, "tk_template_version"

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLj:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_6
    const-string v0, "tk_publish_type"

    iget v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->tkPublishType:I

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 16
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLl:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 17
    const-string v0, "template_show_type"

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLl:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_7
    const-string v0, "network_download_status"

    iget v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLm:I

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 19
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLn:I

    if-eqz v0, :cond_8

    .line 20
    const-string v2, "award_task_name"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 21
    :cond_8
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLo:I

    if-eqz v0, :cond_9

    .line 22
    const-string v2, "jumps_liveroom_type"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 23
    :cond_9
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLp:I

    if-eqz v0, :cond_a

    .line 24
    const-string v2, "universe_feature_freg"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 25
    :cond_a
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLq:I

    if-eqz v0, :cond_b

    .line 26
    const-string v2, "replace_url_succ"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 27
    :cond_b
    iget-boolean v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    if-eqz v0, :cond_c

    .line 28
    const-string v2, "is_dp_opt"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 29
    :cond_c
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLs:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 30
    const-string v0, "component_module"

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLs:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_d
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLu:I

    if-eqz v0, :cond_e

    .line 32
    const-string v2, "is_carousel"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 33
    :cond_e
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLv:I

    if-eqz v0, :cond_f

    .line 34
    const-string v2, "is_special_preload"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 35
    :cond_f
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLw:I

    if-eqz v0, :cond_10

    .line 36
    const-string v2, "card_type"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 37
    :cond_10
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLx:I

    if-eqz v0, :cond_11

    .line 38
    const-string v2, "is_closure"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 39
    :cond_11
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLy:I

    if-eqz v0, :cond_12

    .line 40
    const-string v2, "is_click_invoked"

    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 41
    :cond_12
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLz:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 42
    const-string v0, "authorization_status"

    iget-object v2, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLz:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_13
    iget-object v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLA:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 44
    const-string v0, "login_source"

    iget-object v1, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLA:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_14
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLB:I

    if-eqz v0, :cond_15

    .line 46
    const-string v1, "is_login"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 47
    :cond_15
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLC:I

    if-eqz v0, :cond_16

    .line 48
    const-string v1, "interception_time"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 49
    :cond_16
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLD:I

    if-eqz v0, :cond_17

    .line 50
    const-string v1, "interception_reason"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 51
    :cond_17
    iget v0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLE:I

    if-eqz v0, :cond_18

    .line 52
    const-string v1, "coupon_receive_status"

    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 53
    :cond_18
    iget p0, p0, Lcom/kwad/sdk/core/adlog/a$a;->aLG:I

    if-eqz p0, :cond_19

    .line 54
    const-string v0, "deeplink_evocation_source"

    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_19
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/cn;->a(Lcom/kwad/sdk/core/adlog/a$a;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final bridge synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/adlog/a$a;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/cn;->b(Lcom/kwad/sdk/core/adlog/a$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
