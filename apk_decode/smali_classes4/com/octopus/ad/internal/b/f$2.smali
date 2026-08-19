.class Lcom/octopus/ad/internal/b/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f;->al()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$2;->a:Lcom/octopus/ad/internal/b/f;

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
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$2;->a:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/b/f;->b(Lcom/octopus/ad/internal/b/f;)Landroid/webkit/WebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$2;->a:Lcom/octopus/ad/internal/b/f;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/b/f;->b(Lcom/octopus/ad/internal/b/f;)Landroid/webkit/WebView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$2;->a:Lcom/octopus/ad/internal/b/f;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/internal/b/f;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_0
    return-void
.end method
