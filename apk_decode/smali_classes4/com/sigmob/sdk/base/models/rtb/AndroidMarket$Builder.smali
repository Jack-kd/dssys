.class public final Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;",
        "Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public app_package_name:Ljava/lang/String;

.field public appstore_package_name:Ljava/lang/String;

.field public market_url:Ljava/lang/String;

.field public type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public app_package_name(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;->app_package_name:Ljava/lang/String;

    return-object p0
.end method

.method public appstore_package_name(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;->appstore_package_name:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;
    .locals 6

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;->market_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;->app_package_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;->appstore_package_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;->type:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public market_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;->market_url:Ljava/lang/String;

    return-object p0
.end method

.method public type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket$Builder;->type:Ljava/lang/Integer;

    return-object p0
.end method
