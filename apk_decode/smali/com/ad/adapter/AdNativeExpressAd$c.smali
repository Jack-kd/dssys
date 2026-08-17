.class public Lcom/ad/adapter/AdNativeExpressAd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/adapter/AdNativeExpressAd;->destory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/ad/adapter/AdNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/ad/adapter/AdNativeExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/adapter/AdNativeExpressAd$c;->b:Lcom/ad/adapter/AdNativeExpressAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ad/adapter/AdNativeExpressAd$c;->b:Lcom/ad/adapter/AdNativeExpressAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ad/adapter/AdNativeExpressAd;->a(Lcom/ad/adapter/AdNativeExpressAd;)Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ad/adapter/AdNativeExpressAd$c;->b:Lcom/ad/adapter/AdNativeExpressAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ad/adapter/AdNativeExpressAd;->a(Lcom/ad/adapter/AdNativeExpressAd;)Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->destroy()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/ad/adapter/AdNativeExpressAd$c;->b:Lcom/ad/adapter/AdNativeExpressAd;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/ad/adapter/AdNativeExpressAd;->b(Lcom/ad/adapter/AdNativeExpressAd;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
