.class public Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/ad/BaseAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickExtInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private lockClickExtInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

.field private rewardTempId:I

.field private webTempId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public clear()Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->rewardTempId:I

    .line 3
    .line 4
    iput v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->webTempId:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->lockClickExtInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->rewardTempId:I

    .line 11
    .line 12
    iput v1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->rewardTempId:I

    .line 13
    .line 14
    iget v0, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->webTempId:I

    .line 15
    .line 16
    iput v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->webTempId:I

    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public getRewardTempId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->rewardTempId:I

    .line 2
    .line 3
    return v0
.end method

.method public getWebTempId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->webTempId:I

    .line 2
    .line 3
    return v0
.end method

.method public setRewardTempId(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->rewardTempId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setWebTempId(IZ)Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->webTempId:I

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->lockClickExtInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 10
    .line 11
    invoke-direct {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->lockClickExtInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 15
    .line 16
    :cond_0
    iget-object p2, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->lockClickExtInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 17
    .line 18
    iput p1, p2, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->webTempId:I

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->lockClickExtInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    iput p2, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->webTempId:I

    .line 27
    .line 28
    :cond_2
    return-object p0
.end method
