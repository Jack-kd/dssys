.class public final Lcom/kwad/components/ad/interstitial/f/g;
.super Lcom/kwad/components/ad/interstitial/f/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/interstitial/f/g$b;,
        Lcom/kwad/components/ad/interstitial/f/g$a;
    }
.end annotation


# static fields
.field private static nT:I = 0x4


# instance fields
.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mN:Lcom/kwad/components/ad/interstitial/f/c;

.field private nR:Lcom/kwad/components/ad/interstitial/f/g$a;

.field private nS:Lcom/kwad/components/ad/interstitial/f/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/g$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/components/ad/interstitial/f/g$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nR:Lcom/kwad/components/ad/interstitial/f/g$a;

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/kwad/components/ad/interstitial/f/g$b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 17
    .line 18
    return-void
.end method

.method private a(Lcom/kwad/components/ad/interstitial/f/g$a;Lcom/kwad/components/ad/interstitial/f/g$b;Lcom/kwad/sdk/core/response/model/AdInfo;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/f/g$a;->a(Lcom/kwad/components/ad/interstitial/f/g$a;)Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/kwad/components/ad/interstitial/f/g$b;->getAppIconUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Lcom/kwad/sdk/core/response/helper/a;->co(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v4, 0x2

    .line 26
    if-ne v1, v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/kwad/components/ad/interstitial/f/g$b;->getAppIconUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget v4, Lcom/kwad/sdk/R$drawable;->ksad_default_app_icon:I

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, p4, v1}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadCircleIcon(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_default_app_icon:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/kwad/components/ad/interstitial/f/g$b;->getAppIconUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget v4, Lcom/kwad/components/ad/interstitial/f/g;->nT:I

    .line 60
    .line 61
    invoke-static {v0, v1, p4, v4}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadWithRadius(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/f/g$a;->b(Lcom/kwad/components/ad/interstitial/f/g$a;)Landroid/widget/TextView;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-virtual {p2}, Lcom/kwad/components/ad/interstitial/f/g$b;->eG()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/kwad/components/ad/interstitial/b/b;->dU()Z

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    if-eqz p4, :cond_2

    .line 84
    .line 85
    invoke-static {p3}, Lcom/kwad/sdk/core/response/helper/a;->co(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    const/4 p4, 0x3

    .line 90
    if-ne p3, p4, :cond_2

    .line 91
    .line 92
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/f/g$a;->c(Lcom/kwad/components/ad/interstitial/f/g$a;)Lcom/kwad/components/ad/widget/KsPriceView;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p2}, Lcom/kwad/components/ad/interstitial/f/g$b;->getPrice()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    invoke-virtual {p2}, Lcom/kwad/components/ad/interstitial/f/g$b;->eI()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p3, p4, v0, v1}, Lcom/kwad/components/ad/widget/KsPriceView;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/f/g$a;->c(Lcom/kwad/components/ad/interstitial/f/g$a;)Lcom/kwad/components/ad/widget/KsPriceView;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/f/g$a;->d(Lcom/kwad/components/ad/interstitial/f/g$a;)Landroid/widget/TextView;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/f/g;->eF()V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/f/g$a;->d(Lcom/kwad/components/ad/interstitial/f/g$a;)Landroid/widget/TextView;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p2}, Lcom/kwad/components/ad/interstitial/f/g$b;->eH()Ljava/lang/CharSequence;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/g;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/kwad/components/ad/interstitial/f/c;->mO:Lcom/kwad/components/ad/interstitial/h/d;

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/kwad/components/ad/interstitial/f/g$b;->eJ()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2, v3}, Lcom/kwad/components/ad/interstitial/h/d;->f(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method private d(Lcom/kwad/sdk/core/response/model/AdInfo;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->co(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cV(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->y(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cu(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->z(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget v0, Lcom/kwad/components/core/widget/e;->aww:I

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/response/helper/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;I)Landroid/text/SpannableString;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cU(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/interstitial/f/g$b;->a(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cR(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 54
    .line 55
    invoke-static {}, Lcom/kwad/components/ad/e/b;->aH()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/interstitial/f/g$b;->B(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 64
    .line 65
    invoke-static {}, Lcom/kwad/components/ad/e/b;->aK()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/interstitial/f/g$b;->B(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    invoke-static {}, Lcom/kwad/components/ad/interstitial/b/b;->dU()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->co(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v1, 0x3

    .line 84
    if-ne v0, v1, :cond_3

    .line 85
    .line 86
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->dc(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdProductInfo;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 91
    .line 92
    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdProductInfo;->icon:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->y(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 98
    .line 99
    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdProductInfo;->name:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->z(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 105
    .line 106
    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdProductInfo;->originPrice:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->A(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdProductInfo;->price:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/interstitial/f/g$b;->setPrice(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 119
    .line 120
    invoke-static {}, Lcom/kwad/components/ad/e/b;->aI()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/interstitial/f/g$b;->B(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cv(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->y(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aB(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_4

    .line 152
    .line 153
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 154
    .line 155
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aB(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->z(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->advertiserInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;->adAuthorText:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_5

    .line 172
    .line 173
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 174
    .line 175
    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->advertiserInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;->adAuthorText:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->z(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    sget v2, Lcom/kwad/sdk/R$string;->ksad_ad_default_username_normal:I

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->z(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 199
    .line 200
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aA(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->a(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aK(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/interstitial/f/g$b;->B(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 218
    .line 219
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cv(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->y(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aD(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_7

    .line 235
    .line 236
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 237
    .line 238
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aD(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->z(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_7
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->advertiserInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;

    .line 247
    .line 248
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;->adAuthorText:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_8

    .line 255
    .line 256
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 257
    .line 258
    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->advertiserInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;

    .line 259
    .line 260
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdvertiserInfo;->adAuthorText:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->z(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_8
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    sget v2, Lcom/kwad/sdk/R$string;->ksad_ad_default_username_normal:I

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->z(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :goto_1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 282
    .line 283
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aA(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$b;->a(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 291
    .line 292
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aK(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/interstitial/f/g$b;->B(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method private eF()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/interstitial/f/c;->mO:Lcom/kwad/components/ad/interstitial/h/d;

    .line 4
    .line 5
    sget v1, Lcom/kwad/sdk/R$id;->ksad_ad_desc_layout:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/g;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/kwad/components/ad/interstitial/f/c;->mO:Lcom/kwad/components/ad/interstitial/h/d;

    .line 14
    .line 15
    sget v2, Lcom/kwad/sdk/R$id;->ksad_space:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    const v3, 0x402b851f    # 2.68f

    .line 28
    .line 29
    .line 30
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final ay()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/interstitial/f/b;->ay()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->SB()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/kwad/components/ad/interstitial/f/c;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nR:Lcom/kwad/components/ad/interstitial/f/g$a;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/g;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/kwad/components/ad/interstitial/f/c;->mO:Lcom/kwad/components/ad/interstitial/h/d;

    .line 27
    .line 28
    sget v2, Lcom/kwad/sdk/R$id;->ksad_app_icon:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$a;->a(Lcom/kwad/components/ad/interstitial/f/g$a;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nR:Lcom/kwad/components/ad/interstitial/f/g$a;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/g;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/kwad/components/ad/interstitial/f/c;->mO:Lcom/kwad/components/ad/interstitial/h/d;

    .line 44
    .line 45
    sget v2, Lcom/kwad/sdk/R$id;->ksad_app_title:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$a;->a(Lcom/kwad/components/ad/interstitial/f/g$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nR:Lcom/kwad/components/ad/interstitial/f/g$a;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/g;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/kwad/components/ad/interstitial/f/c;->mO:Lcom/kwad/components/ad/interstitial/h/d;

    .line 61
    .line 62
    sget v2, Lcom/kwad/sdk/R$id;->ksad_app_desc:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$a;->b(Lcom/kwad/components/ad/interstitial/f/g$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nR:Lcom/kwad/components/ad/interstitial/f/g$a;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/g;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/kwad/components/ad/interstitial/f/c;->mO:Lcom/kwad/components/ad/interstitial/h/d;

    .line 78
    .line 79
    sget v2, Lcom/kwad/sdk/R$id;->ksad_product_price:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/kwad/components/ad/widget/KsPriceView;

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/kwad/components/ad/interstitial/f/g$a;->a(Lcom/kwad/components/ad/interstitial/f/g$a;Lcom/kwad/components/ad/widget/KsPriceView;)Lcom/kwad/components/ad/widget/KsPriceView;

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 91
    .line 92
    invoke-direct {p0, v0}, Lcom/kwad/components/ad/interstitial/f/g;->d(Lcom/kwad/sdk/core/response/model/AdInfo;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f/g;->nR:Lcom/kwad/components/ad/interstitial/f/g$a;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f/g;->nS:Lcom/kwad/components/ad/interstitial/f/g$b;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/kwad/components/ad/interstitial/f/g;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/kwad/components/ad/interstitial/f/g;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 102
    .line 103
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kwad/components/ad/interstitial/f/g;->a(Lcom/kwad/components/ad/interstitial/f/g$a;Lcom/kwad/components/ad/interstitial/f/g$b;Lcom/kwad/sdk/core/response/model/AdInfo;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUnbind()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
