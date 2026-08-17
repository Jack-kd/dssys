.class final Lcom/kwad/components/core/page/d/a/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/webview/KsAdWebView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/page/d/a/g;->fA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aeJ:Lcom/kwad/components/core/page/d/a/g;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/page/d/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "shouldOverrideUrlLoading url="

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "LandPageWebViewLoadPresenter"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/components/core/page/d/a/g;)Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView;->getUniqueId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "shouldOverrideUrlLoading"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/webview/b/c/b;->ah(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/kwad/components/core/page/d/a/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 44
    .line 45
    invoke-static {v0, p2}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/components/core/page/d/a/g;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->bq(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/kwad/sdk/utils/ao;->dy(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    invoke-static {p2}, Lcom/kwad/sdk/utils/ao;->hP(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/components/core/page/d/a/g;)Lcom/kwad/sdk/core/webview/KsAdWebView;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/KsAdWebView;->getClientConfig()Lcom/kwad/sdk/core/webview/a/c$a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Lcom/kwad/components/core/urlReplace/c;

    .line 83
    .line 84
    invoke-direct {v1}, Lcom/kwad/components/core/urlReplace/c;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v2, Ljava/lang/Object;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v3, p0, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 93
    .line 94
    new-instance v4, Lcom/kwad/components/core/page/d/a/g$1$1;

    .line 95
    .line 96
    invoke-direct {v4, p0, v2, v1, v0}, Lcom/kwad/components/core/page/d/a/g$1$1;-><init>(Lcom/kwad/components/core/page/d/a/g$1;Ljava/lang/Object;Lcom/kwad/components/core/urlReplace/c;Lcom/kwad/sdk/core/webview/a/c$a;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v3, v4}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/components/core/page/d/a/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/kwad/components/core/page/d/a/g;->uw()Landroid/os/Handler;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/kwad/components/core/page/d/a/g$1;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 107
    .line 108
    invoke-static {v4}, Lcom/kwad/components/core/page/d/a/g;->c(Lcom/kwad/components/core/page/d/a/g;)Ljava/lang/Runnable;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->br(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    int-to-long v5, p1

    .line 117
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    .line 119
    .line 120
    new-instance p1, Lcom/kwad/components/core/page/d/a/g$1$2;

    .line 121
    .line 122
    invoke-direct {p1, p0, v2, v0}, Lcom/kwad/components/core/page/d/a/g$1$2;-><init>(Lcom/kwad/components/core/page/d/a/g$1;Ljava/lang/Object;Lcom/kwad/sdk/core/webview/a/c$a;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p2, p1}, Lcom/kwad/components/core/urlReplace/c;->a(Ljava/lang/String;Lcom/kwad/components/core/urlReplace/a;)V

    .line 126
    .line 127
    .line 128
    const/4 p1, 0x1

    .line 129
    return p1

    .line 130
    :cond_0
    const/4 p1, 0x0

    .line 131
    return p1
.end method
