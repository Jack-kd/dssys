.class public Lcom/sigmob/sdk/base/models/WindAdMetaData;
.super Ljava/lang/Object;


# instance fields
.field private adId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/WindAdMetaData;->adId:Ljava/lang/String;

    return-void
.end method

.method public static create(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/WindAdMetaData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/base/models/WindAdMetaData;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVid()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/models/WindAdMetaData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/WindAdMetaData;->adId:Ljava/lang/String;

    return-object v0
.end method
