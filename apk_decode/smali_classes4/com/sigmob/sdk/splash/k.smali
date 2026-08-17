.class public Lcom/sigmob/sdk/splash/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/ah;


# static fields
.field public static final a:Ljava/lang/String; = "SplashViewAbilitySessionManager"


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sigmob/sdk/splash/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/k;->b:Ljava/util/HashSet;

    new-instance v1, Lcom/sigmob/sdk/splash/j;

    invoke-direct {v1}, Lcom/sigmob/sdk/splash/j;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->b:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/splash/j;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/k;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/splash/j;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setSessionManager(Lcom/sigmob/sdk/base/common/ah;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->destroy()V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/k;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_3
    const-string v0, "endDisplaySession() called adUnit is null."

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 2
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->b:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/splash/j;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sigmob/sdk/splash/k;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setSessionManager(Lcom/sigmob/sdk/base/common/ah;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "createDisplaySession() called adUnit is null."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashViewAbilitySessionManager#recordDisplayEvent: event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->b:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/splash/j;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/k;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2, p1, p2}, Lcom/sigmob/sdk/splash/j;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p1, "recordDisplayEvent() called adUnit is null."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method
