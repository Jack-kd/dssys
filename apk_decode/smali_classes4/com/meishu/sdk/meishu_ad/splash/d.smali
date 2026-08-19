.class public Lcom/meishu/sdk/meishu_ad/splash/d;
.super Lcom/meishu/sdk/meishu_ad/nativ/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/splash/d$a;
    }
.end annotation


# instance fields
.field public E:I

.field public F:I

.field public G:I

.field public H:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/meishu_ad/nativ/f;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/splash/d;->E:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getClk_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/splash/d;->E:I

    .line 2
    .line 3
    return v0
.end method

.method public getPower_index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/splash/d;->F:I

    .line 2
    .line 3
    return v0
.end method
