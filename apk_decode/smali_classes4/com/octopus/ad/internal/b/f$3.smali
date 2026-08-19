.class Lcom/octopus/ad/internal/b/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/a/c$b;)V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/f$3;->a:Lcom/octopus/ad/internal/b/f;

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
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/internal/b/f;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/octopus/ad/internal/b/f$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 22
    .line 23
    new-instance v2, Landroid/webkit/WebView;

    .line 24
    .line 25
    new-instance v3, Landroid/content/MutableContextWrapper;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/internal/b/f;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/octopus/ad/internal/b/f;->b(Lcom/octopus/ad/internal/b/f;)Landroid/webkit/WebView;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/octopus/ad/internal/c/t;->a(Landroid/webkit/WebView;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/octopus/ad/internal/b/f$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/octopus/ad/internal/b/f;->b(Lcom/octopus/ad/internal/b/f;)Landroid/webkit/WebView;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/octopus/ad/internal/b/f$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/internal/b/f;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-void

    .line 64
    :goto_0
    const-string v1, "OctopusAd"

    .line 65
    .line 66
    const-string v2, "An Exception Caught"

    .line 67
    .line 68
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
