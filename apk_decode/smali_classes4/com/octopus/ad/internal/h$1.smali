.class Lcom/octopus/ad/internal/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/h;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/h$1;->a:Lcom/octopus/ad/internal/h;

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
    iget-object v0, p0, Lcom/octopus/ad/internal/h$1;->a:Lcom/octopus/ad/internal/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/h;->a(Lcom/octopus/ad/internal/h;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/h$1;->a:Lcom/octopus/ad/internal/h;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/h;->b(Lcom/octopus/ad/internal/h;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/octopus/ad/internal/h$1;->a:Lcom/octopus/ad/internal/h;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/octopus/ad/internal/h;->b(Lcom/octopus/ad/internal/h;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/nativead/NativeAdShownListener;->onAdShown(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/h$1;->a:Lcom/octopus/ad/internal/h;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/octopus/ad/internal/h;->c(Lcom/octopus/ad/internal/h;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/octopus/ad/internal/h$1;->a:Lcom/octopus/ad/internal/h;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/octopus/ad/internal/h;->c(Lcom/octopus/ad/internal/h;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/h$1;->a:Lcom/octopus/ad/internal/h;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/h;->a(Lcom/octopus/ad/internal/h;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)Lcom/octopus/ad/internal/nativead/NativeAdShownListener;

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/octopus/ad/internal/h$1;->a:Lcom/octopus/ad/internal/h;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/h;->a(Lcom/octopus/ad/internal/h;Landroid/view/View;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/octopus/ad/internal/h$1;->a:Lcom/octopus/ad/internal/h;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/h;->a(Lcom/octopus/ad/internal/h;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method
