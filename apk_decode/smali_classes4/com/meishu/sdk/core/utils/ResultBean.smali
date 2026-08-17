.class public Lcom/meishu/sdk/core/utils/ResultBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;
    }
.end annotation


# instance fields
.field private adInfo:Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

.field private aderId:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private cat:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private drawing:I

.field private ecpm:Ljava/lang/String;

.field private extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fromId:Ljava/lang/String;

.field private interactionType:I

.field private is_bidding:I

.field private pid:Ljava/lang/String;

.field private price:I

.field private reqId:Ljava/lang/String;

.field private reward_name:Ljava/lang/String;

.field private reward_num:I

.field private s_code:Ljava/lang/String;

.field private s_ext:Ljava/lang/String;

.field private sdkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->pid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->appid:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->sdkName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->reqId:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->fromId:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getAdInfo()Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->adInfo:Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->aderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->appid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->cat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->cid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->drawing:I

    .line 2
    .line 3
    return v0
.end method

.method public getEcpm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->ecpm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->extraInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->fromId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->interactionType:I

    .line 2
    .line 3
    return v0
.end method

.method public getIs_bidding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->is_bidding:I

    .line 2
    .line 3
    return v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->price:I

    .line 2
    .line 3
    return v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->reqId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReward_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->reward_name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReward_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->reward_num:I

    .line 2
    .line 3
    return v0
.end method

.method public getS_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->s_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS_ext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->s_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/ResultBean;->sdkName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdInfo(Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->adInfo:Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setAderId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->aderId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->appid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->cat:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->cid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->drawing:I

    .line 2
    .line 3
    return-void
.end method

.method public setEcpm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->ecpm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExtraInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->extraInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setFromId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->fromId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInteractionType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->interactionType:I

    .line 2
    .line 3
    return-void
.end method

.method public setIs_bidding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->is_bidding:I

    .line 2
    .line 3
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->price:I

    .line 2
    .line 3
    return-void
.end method

.method public setReqId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->reqId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReward_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->reward_name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReward_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->reward_num:I

    .line 2
    .line 3
    return-void
.end method

.method public setS_code(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->s_code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setS_ext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->s_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSdkName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/ResultBean;->sdkName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
