.class public Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/domain/ClickIdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickIdInfo"
.end annotation


# instance fields
.field private clickid:Ljava/lang/String;

.field private dstlink:Ljava/lang/String;


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
.method public getClickid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;->clickid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDstlink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;->dstlink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClickid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;->clickid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDstlink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;->dstlink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
