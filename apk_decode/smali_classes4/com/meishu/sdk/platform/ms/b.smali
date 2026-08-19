.class public Lcom/meishu/sdk/platform/ms/b;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/c;


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/AdSlot;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/banner/a;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MS"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/b;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()Lcom/meishu/sdk/core/ad/AdSlot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/b;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/b;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
