.class public Lcom/sigmob/sdk/newInterstitial/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/ah;


# static fields
.field public static final a:Ljava/lang/String; = "InterstitialAdViewAbilitySessionManager"


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sigmob/sdk/newInterstitial/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->b:Ljava/util/HashSet;

    new-instance v1, Lcom/sigmob/sdk/newInterstitial/b;

    invoke-direct {v1}, Lcom/sigmob/sdk/newInterstitial/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const-string v0, "endDisplaySession() called mAdUnit is null"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/newInterstitial/b;

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/newInterstitial/b;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setSessionManager(Lcom/sigmob/sdk/base/common/ah;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->destroy()V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object v1, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 2
    if-nez p1, :cond_0

    const-string p1, "createDisplaySession() called mAdUnit is null"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/newInterstitial/b;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setSessionManager(Lcom/sigmob/sdk/base/common/ah;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterstitialAdViewAbilitySessionManager#recordDisplayEvent: event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const-string p1, "createDisplaySession() called mAdUnit is null"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/c;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/newInterstitial/b;

    iget-object v2, p0, Lcom/sigmob/sdk/newInterstitial/c;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2, p1, p2}, Lcom/sigmob/sdk/newInterstitial/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    return-void
.end method
