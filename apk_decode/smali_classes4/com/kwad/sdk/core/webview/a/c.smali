.class public Lcom/kwad/sdk/core/webview/a/c;
.super Lcom/kwad/sdk/core/webview/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/webview/a/c$a;
    }
.end annotation


# instance fields
.field private NL:Lcom/kwad/sdk/core/webview/a/c$a;

.field private aeI:Z

.field private bcm:Z

.field private bcn:Z

.field private bco:Z

.field private bcp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/webview/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c;->bcm:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c;->bcn:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c;->bco:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c;->bcp:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c;->aeI:Z

    .line 14
    .line 15
    return-void
.end method

.method private a(Lcom/kwad/sdk/core/webview/a/c$a;Ljava/lang/String;)I
    .locals 8
    .param p1    # Lcom/kwad/sdk/core/webview/a/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->cr(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move v1, v0

    .line 16
    :goto_0
    new-instance v2, Lcom/kwad/sdk/core/adlog/c/a;

    .line 17
    .line 18
    invoke-direct {v2}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v4, v2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    new-instance v4, Lcom/kwad/sdk/core/adlog/a$a;

    .line 29
    .line 30
    invoke-direct {v4}, Lcom/kwad/sdk/core/adlog/a$a;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v4, v2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 34
    .line 35
    :cond_0
    iget-object v4, v2, Lcom/kwad/sdk/core/adlog/c/a;->QZ:Lcom/kwad/sdk/core/adlog/a$a;

    .line 36
    .line 37
    iput-boolean v3, v4, Lcom/kwad/sdk/core/adlog/a$a;->aLr:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Lcom/kwad/sdk/core/webview/a/c$1;

    .line 44
    .line 45
    invoke-direct {v5, p0}, Lcom/kwad/sdk/core/webview/a/c$1;-><init>(Lcom/kwad/sdk/core/webview/a/c;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4, p2, v5}, Lcom/kwad/sdk/core/download/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kwad/sdk/core/download/a/b$a;)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4, p2}, Lcom/kwad/sdk/core/download/a/b;->I(Landroid/content/Context;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    :goto_1
    const/4 v5, 0x2

    .line 62
    const-string v6, ""

    .line 63
    .line 64
    if-ne v4, v3, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->oq()Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->oq()Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p2}, Lcom/kwad/sdk/core/webview/KsAdWebView$b;->onSuccess()V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2, v6, v5, v2}, Lcom/kwad/sdk/core/adlog/c;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1, v1}, Lcom/kwad/sdk/core/adlog/c;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->oq()Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    if-eqz v7, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->oq()Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-interface {v7}, Lcom/kwad/sdk/core/webview/KsAdWebView$b;->onFailed()V

    .line 105
    .line 106
    .line 107
    :cond_4
    const/4 v7, -0x1

    .line 108
    if-ne v4, v7, :cond_5

    .line 109
    .line 110
    iget-boolean v7, p0, Lcom/kwad/sdk/core/webview/a/c;->aeI:Z

    .line 111
    .line 112
    if-nez v7, :cond_5

    .line 113
    .line 114
    iput-boolean v3, p0, Lcom/kwad/sdk/core/webview/a/c;->aeI:Z

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {p2, v6, v5, v2}, Lcom/kwad/sdk/core/adlog/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;ILcom/kwad/sdk/core/adlog/c/a;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZI)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    if-nez v4, :cond_6

    .line 132
    .line 133
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const/4 p2, 0x3

    .line 144
    invoke-static {p1, v1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZI)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    if-nez v4, :cond_7

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    if-nez p2, :cond_7

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const/4 p2, 0x4

    .line 161
    invoke-static {p1, v1, p2}, Lcom/kwad/sdk/core/adlog/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZI)V

    .line 162
    .line 163
    .line 164
    :cond_7
    :goto_2
    return v4
.end method

.method private eS(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->Pz()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/kwad/sdk/core/webview/a/c;->bcp:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-boolean v1, p0, Lcom/kwad/sdk/core/webview/a/c;->bcp:Z

    .line 16
    .line 17
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/kwad/sdk/core/adlog/c;->cB(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c;->bco:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_2
    iput-boolean v1, p0, Lcom/kwad/sdk/core/webview/a/c;->bco:Z

    .line 33
    .line 34
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->PA()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x2

    .line 49
    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->p(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    if-nez p1, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->p(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->p(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private eT(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c;->bcn:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c;->bcn:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/kwad/sdk/core/webview/a/c$a;->Pz()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    if-gez p1, :cond_1

    .line 18
    .line 19
    const/16 v1, -0x3e8

    .line 20
    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1, p1, v0}, Lcom/kwad/sdk/core/adlog/c;->q(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->PA()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    if-lez p1, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->q(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/core/adlog/c;->q(Lcom/kwad/sdk/core/response/model/AdTemplate;II)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private fH(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "http"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_7

    .line 9
    .line 10
    const-string v1, "https"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    const-string v1, "tel:"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-nez v1, :cond_5

    .line 28
    .line 29
    const-string v1, "sms:"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    if-eqz v1, :cond_8

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v1}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->bS(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 51
    .line 52
    .line 53
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    const/16 v1, -0x3e8

    .line 56
    .line 57
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/kwad/sdk/core/webview/a/c$a;->Pz()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    iget-boolean v3, p0, Lcom/kwad/sdk/core/webview/a/c;->bcm:Z

    .line 66
    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/kwad/sdk/core/webview/a/c;->bcm:Z

    .line 70
    .line 71
    iget-object v3, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/kwad/sdk/core/webview/a/c$a;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v3, v1}, Lcom/kwad/sdk/core/adlog/c;->v(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p1

    .line 82
    goto :goto_4

    .line 83
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/kwad/sdk/core/webview/a/c$a;->Py()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/webview/a/c;->eS(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 95
    .line 96
    invoke-direct {p0, v1, p1}, Lcom/kwad/sdk/core/webview/a/c;->a(Lcom/kwad/sdk/core/webview/a/c$a;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :cond_3
    invoke-static {p1}, Lcom/kwad/sdk/core/webview/a/c;->fI(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/webview/a/c;->eT(I)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_4
    invoke-direct {p0, v1}, Lcom/kwad/sdk/core/webview/a/c;->eT(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    :goto_2
    new-instance v1, Landroid/content/Intent;

    .line 115
    .line 116
    const-string v3, "android.intent.action.VIEW"

    .line 117
    .line 118
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    .line 135
    .line 136
    :cond_6
    return v2

    .line 137
    :cond_7
    :goto_3
    return v0

    .line 138
    :goto_4
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    :cond_8
    :goto_5
    return v0
.end method

.method private static fI(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "hwfastapp://"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    const-string v0, "hap://app"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_3

    .line 25
    .line 26
    const-string v0, "intent://hapjs.org/"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v0, "intent://"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    return v2

    .line 44
    :cond_2
    return v1

    .line 45
    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
.method public final S(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/a;->mUniqueId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final getClientConfig()Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/a;->mUniqueId:Ljava/lang/String;

    .line 5
    .line 6
    const-string p2, "onPageFinished"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/kwad/sdk/core/webview/b/c/b;->ah(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView$e;->onPageFinished()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/a;->mUniqueId:Ljava/lang/String;

    .line 5
    .line 6
    const-string p2, "onPageStart"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/kwad/sdk/core/webview/b/c/b;->ah(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/kwad/sdk/core/webview/KsAdWebView$e;->onPageStart()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v0, "onReceivedError "

    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "KsAdWebViewClient"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1, p2, p3, p4}, Lcom/kwad/sdk/core/webview/KsAdWebView$e;->onReceivedHttpError(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {p4, p3}, Lcom/kwad/sdk/core/webview/b/c/b;->aj(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget-object p3, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    iget-object p3, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "http errorCode: "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p3, p2, v0, p1}, Lcom/kwad/sdk/core/webview/KsAdWebView$e;->onReceivedHttpError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void

    .line 53
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object p3, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    iget-object p3, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/kwad/sdk/core/webview/a/c$a;->jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "SSL errorCode: "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p3, p2, v0, p1}, Lcom/kwad/sdk/core/webview/KsAdWebView$e;->onReceivedHttpError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void

    .line 49
    :goto_0
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-static {p2}, LB/a;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public final setClientConfig(Lcom/kwad/sdk/core/webview/a/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/kwad/sdk/core/webview/a/c$a;->PB()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/webview/a/a;->setNeedHybridLoad(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "shouldOverrideUrlLoading url="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "KsAdWebViewClient"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/a;->mUniqueId:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "shouldOverrideUrlLoading"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/webview/b/c/b;->ah(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->PE()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->Pw()Lcom/kwad/sdk/core/webview/KsAdWebView$d;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c;->NL:Lcom/kwad/sdk/core/webview/a/c$a;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/kwad/sdk/core/webview/a/c$a;->Pw()Lcom/kwad/sdk/core/webview/KsAdWebView$d;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/core/webview/KsAdWebView$d;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    return v1

    .line 59
    :cond_0
    invoke-direct {p0, p2}, Lcom/kwad/sdk/core/webview/a/c;->fH(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_1
    return v1
.end method
