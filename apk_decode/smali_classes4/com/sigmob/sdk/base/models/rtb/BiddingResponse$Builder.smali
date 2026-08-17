.class public final Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;",
        "Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public currency:Ljava/lang/String;

.field public ecpm:Ljava/lang/Integer;

.field public lose_url:Ljava/lang/String;

.field public price_for_ssp:Ljava/lang/Integer;

.field public price_for_ssp_enc:Ljava/lang/String;

.field public win_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;
    .locals 8

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->win_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->lose_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->ecpm:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->price_for_ssp:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->price_for_ssp_enc:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->currency:Ljava/lang/String;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public currency(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public ecpm(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->ecpm:Ljava/lang/Integer;

    return-object p0
.end method

.method public lose_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->lose_url:Ljava/lang/String;

    return-object p0
.end method

.method public price_for_ssp(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->price_for_ssp:Ljava/lang/Integer;

    return-object p0
.end method

.method public price_for_ssp_enc(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->price_for_ssp_enc:Ljava/lang/String;

    return-object p0
.end method

.method public win_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->win_url:Ljava/lang/String;

    return-object p0
.end method
