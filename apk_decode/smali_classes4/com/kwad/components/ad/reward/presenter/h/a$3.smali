.class final Lcom/kwad/components/ad/reward/presenter/h/a$3;
.super Lcom/kwad/components/core/video/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/reward/presenter/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Bx:Lcom/kwad/components/ad/reward/presenter/h/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/presenter/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/video/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMediaPlayProgress(JJ)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kwad/components/core/video/m;->onMediaPlayProgress(JJ)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/kwad/components/ad/reward/g;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aS(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-long v0, v0

    .line 25
    const-wide/16 v2, 0x3e8

    .line 26
    .line 27
    mul-long/2addr v0, v2

    .line 28
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/kwad/components/ad/reward/presenter/h/a;->f(Lcom/kwad/components/ad/reward/presenter/h/a;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    cmp-long v2, p3, v2

    .line 35
    .line 36
    if-lez v2, :cond_3

    .line 37
    .line 38
    sub-long/2addr p1, p3

    .line 39
    cmp-long p1, p1, v0

    .line 40
    .line 41
    if-lez p1, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;->g(Lcom/kwad/components/ad/reward/presenter/h/a;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aT(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/4 p2, 0x1

    .line 63
    if-ne p1, p2, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aE(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p3, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 76
    .line 77
    invoke-static {p3}, Lcom/kwad/components/ad/reward/presenter/h/a;->h(Lcom/kwad/components/ad/reward/presenter/h/a;)Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-static {p3, p1}, Lcom/kwad/sdk/utils/au;->aw(Landroid/content/Context;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;->i(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-boolean p1, p1, Lcom/kwad/components/ad/reward/g;->jh:Z

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 100
    .line 101
    invoke-static {p1, p2}, Lcom/kwad/components/ad/reward/presenter/h/a;->b(Lcom/kwad/components/ad/reward/presenter/h/a;Z)Z

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;->l(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/k/a/d;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 111
    .line 112
    invoke-static {p2}, Lcom/kwad/components/ad/reward/presenter/h/a;->j(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Lcom/kwad/components/core/n/a;->getActivity()Landroid/app/Activity;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    iget-object p3, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 121
    .line 122
    invoke-static {p3}, Lcom/kwad/components/ad/reward/presenter/h/a;->k(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/ad/reward/g;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    iget-object p3, p3, Lcom/kwad/components/ad/reward/g;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 127
    .line 128
    iget-object p4, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 129
    .line 130
    invoke-virtual {p1, p2, p3, p4}, Lcom/kwad/components/ad/reward/k/a/d;->a(Landroid/app/Activity;Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/core/webview/tachikoma/j;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$3;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;->m(Lcom/kwad/components/ad/reward/presenter/h/a;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_0
    return-void
.end method
