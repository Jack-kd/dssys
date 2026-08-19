.class public final Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;",
        "Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public wx_app_id:Ljava/lang/String;

.field public wx_app_path:Ljava/lang/String;

.field public wx_app_username:Ljava/lang/String;

.field public wx_business_type:Ljava/lang/Integer;

.field public wx_ext_msg:Ljava/lang/String;

.field public wx_universal_link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_app_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_universal_link:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_app_username:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_app_path:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_ext_msg:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->DEFAULT_WX_BUSINESS_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_business_type:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;
    .locals 8

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_app_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_universal_link:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_app_username:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_app_path:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_ext_msg:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_business_type:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public wx_app_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_app_id:Ljava/lang/String;

    return-object p0
.end method

.method public wx_app_path(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_app_path:Ljava/lang/String;

    return-object p0
.end method

.method public wx_app_username(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_app_username:Ljava/lang/String;

    return-object p0
.end method

.method public wx_business_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_business_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public wx_ext_msg(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_ext_msg:Ljava/lang/String;

    return-object p0
.end method

.method public wx_universal_link(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes$Builder;->wx_universal_link:Ljava/lang/String;

    return-object p0
.end method
