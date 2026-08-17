.class final Lcom/kwad/components/ad/splashscreen/presenter/u$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/u;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->b(Lcom/kwad/components/ad/splashscreen/presenter/u;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    invoke-static {p1, v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->a(Lcom/kwad/components/ad/splashscreen/presenter/u;Z)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->b(Lcom/kwad/components/ad/splashscreen/presenter/u;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->d(Lcom/kwad/components/ad/splashscreen/presenter/u;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->speakerIconUrl:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->d(Lcom/kwad/components/ad/splashscreen/presenter/u;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->speakerMuteIconUrl:Ljava/lang/String;

    .line 40
    .line 41
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->a(Lcom/kwad/components/ad/splashscreen/presenter/u;)Landroid/widget/ImageView;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 58
    .line 59
    invoke-static {v0, p1, v2}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->a(Lcom/kwad/components/ad/splashscreen/presenter/u;)Landroid/widget/ImageView;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->h(Lcom/kwad/components/ad/splashscreen/presenter/u;)Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget v2, Lcom/kwad/sdk/R$drawable;->ksad_splash_sound_selector:I

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->a(Lcom/kwad/components/ad/splashscreen/presenter/u;)Landroid/widget/ImageView;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/u;->b(Lcom/kwad/components/ad/splashscreen/presenter/u;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/u$4;->Jy:Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 104
    .line 105
    iget-object v0, p1, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/h;->GN:Lcom/kwad/components/ad/splashscreen/d/a;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/presenter/u;->b(Lcom/kwad/components/ad/splashscreen/presenter/u;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-virtual {v0, p1, v1}, Lcom/kwad/components/ad/splashscreen/d/a;->setAudioEnabled(ZZ)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
