.class public Lcom/ad/main/bz/BeiZiATSplashAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad/main/bz/BeiZiATSplashAdapter;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Lcom/ad/main/bz/BeiZiATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/ad/main/bz/BeiZiATSplashAdapter;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$a;->c:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$a;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$a;->c:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->a(Lcom/ad/main/bz/BeiZiATSplashAdapter;)Lcom/beizi/fusion/SplashAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$a;->c:Lcom/ad/main/bz/BeiZiATSplashAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ad/main/bz/BeiZiATSplashAdapter;->a(Lcom/ad/main/bz/BeiZiATSplashAdapter;)Lcom/beizi/fusion/SplashAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/ad/main/bz/BeiZiATSplashAdapter$a;->b:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/SplashAd;->show(Landroid/view/ViewGroup;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
