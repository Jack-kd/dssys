.class final Lcom/kwad/components/ad/splashscreen/presenter/p$4;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/p;->mV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic IX:Lcom/kwad/components/ad/splashscreen/presenter/p;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->e(Lcom/kwad/components/ad/splashscreen/presenter/p;)Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget v2, v0, v2

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    invoke-static {v1, v2}, Lcom/kwad/components/ad/splashscreen/presenter/p;->c(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    aget v0, v0, v2

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    invoke-static {v1, v0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->d(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->e(Lcom/kwad/components/ad/splashscreen/presenter/p;)Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    int-to-float v1, v1

    .line 42
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->e(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->e(Lcom/kwad/components/ad/splashscreen/presenter/p;)Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-float v1, v1

    .line 56
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->f(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 60
    .line 61
    invoke-static {v0, v2}, Lcom/kwad/components/ad/splashscreen/presenter/p;->b(Lcom/kwad/components/ad/splashscreen/presenter/p;Z)Z

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "ActionBar position: x="

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->f(Lcom/kwad/components/ad/splashscreen/presenter/p;)F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", y="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->g(Lcom/kwad/components/ad/splashscreen/presenter/p;)F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", width="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->h(Lcom/kwad/components/ad/splashscreen/presenter/p;)F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", height="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$4;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->i(Lcom/kwad/components/ad/splashscreen/presenter/p;)F

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "SplashSlideBackupPresenter"

    .line 127
    .line 128
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
