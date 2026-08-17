.class Lcom/fl/saas/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/f;->onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/f;


# direct methods
.method public constructor <init>(Lcom/fl/saas/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/f$b;->a:Lcom/fl/saas/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAdInfo()Lcom/fl/saas/adx/base/bean/AdInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f$b;->a:Lcom/fl/saas/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/fl/saas/j;->p:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fl/saas/f$b;->a:Lcom/fl/saas/f;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/fl/saas/j;->q:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/fl/saas/f$b;->a:Lcom/fl/saas/f;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v2, v2, Lcom/fl/saas/j;->j:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/fl/saas/f$b;->a:Lcom/fl/saas/f;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget v3, v3, Lcom/fl/saas/j;->k:I

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Lcom/fl/saas/adx/base/bean/AdInfo;->create(ILjava/lang/String;Ljava/lang/String;I)Lcom/fl/saas/adx/base/bean/AdInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getSource()Lcom/fl/saas/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f$b;->a:Lcom/fl/saas/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
