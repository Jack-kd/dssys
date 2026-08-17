.class final Lcom/kwad/components/core/page/d/a/g$5;
.super Lcom/kwad/components/core/webview/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/page/d/a/g;
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
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/webview/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/a;Lcom/kwad/sdk/core/webview/b;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/core/webview/jshandler/bg;

    new-instance v1, Lcom/kwad/components/core/page/d/a/g$5$1;

    invoke-direct {v1, p0}, Lcom/kwad/components/core/page/d/a/g$5$1;-><init>(Lcom/kwad/components/core/page/d/a/g$5;)V

    invoke-direct {v0, v1}, Lcom/kwad/components/core/webview/jshandler/bg;-><init>(Lcom/kwad/components/core/webview/jshandler/bg$b;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 2
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    new-instance v1, Lcom/kwad/components/core/webview/jshandler/av;

    new-instance v2, Lcom/kwad/components/core/page/d/a/g$5$2;

    invoke-direct {v2, p0}, Lcom/kwad/components/core/page/d/a/g$5$2;-><init>(Lcom/kwad/components/core/page/d/a/g$5;)V

    invoke-direct {v1, v2}, Lcom/kwad/components/core/webview/jshandler/av;-><init>(Lcom/kwad/components/core/webview/jshandler/av$b;)V

    invoke-static {v0, v1}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/components/core/page/d/a/g;Lcom/kwad/components/core/webview/jshandler/av;)Lcom/kwad/components/core/webview/jshandler/av;

    .line 3
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    new-instance v1, Lcom/kwad/components/core/webview/jshandler/bi;

    new-instance v2, Lcom/kwad/components/core/page/d/a/g$5$3;

    invoke-direct {v2, p0}, Lcom/kwad/components/core/page/d/a/g$5$3;-><init>(Lcom/kwad/components/core/page/d/a/g$5;)V

    invoke-direct {v1, v2}, Lcom/kwad/components/core/webview/jshandler/bi;-><init>(Lcom/kwad/components/core/webview/jshandler/bi$a;)V

    invoke-static {v0, v1}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/components/core/page/d/a/g;Lcom/kwad/components/core/webview/jshandler/bi;)Lcom/kwad/components/core/webview/jshandler/bi;

    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    invoke-static {v0}, Lcom/kwad/components/core/page/d/a/g;->d(Lcom/kwad/components/core/page/d/a/g;)Lcom/kwad/components/core/webview/jshandler/av;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    invoke-static {v0}, Lcom/kwad/components/core/page/d/a/g;->f(Lcom/kwad/components/core/page/d/a/g;)Lcom/kwad/components/core/webview/jshandler/bi;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 6
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/b/b;

    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {v0, p2, v1}, Lcom/kwad/components/core/webview/tachikoma/b/b;-><init>(Lcom/kwad/sdk/core/webview/b;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    .line 7
    new-instance p2, Lcom/kwad/components/core/webview/tachikoma/c/l;

    invoke-direct {p2}, Lcom/kwad/components/core/webview/tachikoma/c/l;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    iget-boolean v0, v0, Lcom/kwad/components/core/page/d/a/b;->mAutoShow:Z

    iput v0, p2, Lcom/kwad/components/core/webview/tachikoma/c/l;->aur:I

    .line 9
    new-instance v0, Lcom/kwad/components/core/webview/tachikoma/b/g;

    invoke-direct {v0, p2}, Lcom/kwad/components/core/webview/tachikoma/b/g;-><init>(Lcom/kwad/components/core/webview/tachikoma/c/l;)V

    invoke-virtual {p1, v0}, Lcom/kwad/components/core/webview/a;->a(Lcom/kwad/sdk/core/webview/c/a;)V

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/jshandler/as$a;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    invoke-virtual {p1}, Lcom/kwad/components/core/webview/jshandler/as$a;->isSuccess()Z

    move-result p1

    iput-boolean p1, v0, Lcom/kwad/components/core/page/d/a/b;->aeh:Z

    return-void
.end method

.method public final a(Lcom/kwad/components/core/webview/jshandler/az;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    invoke-static {v0, p1}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/components/core/page/d/a/g;Lcom/kwad/components/core/webview/jshandler/az;)Lcom/kwad/components/core/webview/jshandler/az;

    return-void
.end method

.method public final a(Lcom/kwad/sdk/commercial/model/WebCloseStatus;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->mWebCardCloseListener:Lcom/kwad/sdk/core/webview/d/a/b;

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/webview/d/a/b;->b(Lcom/kwad/sdk/commercial/model/WebCloseStatus;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/components/core/page/d/a/g;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/components/core/page/d/a/g;->g(Lcom/kwad/components/core/page/d/a/g;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/kwad/components/core/page/d/a/g;->b(Lcom/kwad/components/core/page/d/a/g;Z)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/kwad/components/core/page/d/a/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tU()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tT()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/commercial/f/a;->n(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/kwad/components/core/page/d/a/b;->um()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/kwad/components/core/page/d/a/g;->show()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final onReceivedHttpError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/kwad/components/core/page/d/a/g;->a(Lcom/kwad/components/core/page/d/a/g;Z)Z

    .line 5
    .line 6
    .line 7
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tT()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/net/URI;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tT()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "/"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tT()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_2

    .line 92
    .line 93
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-eqz p3, :cond_1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    iget-object p3, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 101
    .line 102
    iget-object v0, p3, Lcom/kwad/components/core/page/d/a/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 103
    .line 104
    iget-object p3, p3, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 105
    .line 106
    invoke-virtual {p3}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tU()I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tT()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, p3, v1, p1, p2}, Lcom/kwad/sdk/commercial/f/a;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 123
    .line 124
    iget-object v0, p3, Lcom/kwad/components/core/page/d/a/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 125
    .line 126
    iget-object p3, p3, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 127
    .line 128
    invoke-virtual {p3}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tU()I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/kwad/components/core/page/d/a/g;->adC:Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/kwad/components/core/page/AdWebViewActivityProxy$a;->tT()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v0, p3, v1, p1, p2}, Lcom/kwad/sdk/commercial/f/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :goto_2
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final uy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final uz()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
