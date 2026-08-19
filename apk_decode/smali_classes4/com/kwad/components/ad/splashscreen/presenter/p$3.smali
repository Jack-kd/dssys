.class final Lcom/kwad/components/ad/splashscreen/presenter/p$3;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/p;->mU()V
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
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$3;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

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
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$3;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->b(Lcom/kwad/components/ad/splashscreen/presenter/p;)Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$3;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget v2, v0, v2

    .line 17
    .line 18
    int-to-float v2, v2

    .line 19
    invoke-static {v1, v2}, Lcom/kwad/components/ad/splashscreen/presenter/p;->a(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$3;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    aget v0, v0, v2

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    invoke-static {v1, v0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->b(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$3;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 32
    .line 33
    invoke-static {v0, v2}, Lcom/kwad/components/ad/splashscreen/presenter/p;->a(Lcom/kwad/components/ad/splashscreen/presenter/p;Z)Z

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, "SlidePathView position: x="

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$3;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->c(Lcom/kwad/components/ad/splashscreen/presenter/p;)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ", y="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p$3;->IX:Lcom/kwad/components/ad/splashscreen/presenter/p;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->d(Lcom/kwad/components/ad/splashscreen/presenter/p;)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "SplashSlideBackupPresenter"

    .line 71
    .line 72
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
