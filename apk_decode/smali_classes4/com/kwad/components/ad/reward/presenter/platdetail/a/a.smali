.class public final Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;
.super Lcom/kwad/components/ad/reward/presenter/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kwad/sdk/utils/cc$a;


# static fields
.field private static final zz:[Ljava/lang/String;


# instance fields
.field private ca:Lcom/kwad/sdk/utils/cc;

.field private final kf:Lcom/kwad/components/core/video/m;

.field private kv:Landroid/widget/TextView;

.field private kx:Z

.field private ky:J

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

.field private final mRewardVerifyListener:Lcom/kwad/components/ad/reward/e/l;

.field private zA:Z

.field private zB:Z

.field private zC:J

.field private zD:Z

.field private zE:Lcom/kwad/components/core/innerEc/live/base/f;

.field private zv:Landroid/widget/TextView;

.field private zw:Landroid/widget/ImageView;

.field private zx:Landroid/view/View;

.field private zy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "\u5df2\u83b7\u5f97\u5956\u52b11/2"

    .line 2
    .line 3
    const-string v1, "\u5df2\u83b7\u5f97\u5168\u90e8\u5956\u52b1"

    .line 4
    .line 5
    const-string v2, "%ss\u540e\u83b7\u5f97\u5956\u52b11"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zz:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zy:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zA:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zB:Z

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zC:J

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zD:Z

    .line 16
    .line 17
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$1;-><init>(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zE:Lcom/kwad/components/core/innerEc/live/base/f;

    .line 23
    .line 24
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$2;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$2;-><init>(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kf:Lcom/kwad/components/core/video/m;

    .line 30
    .line 31
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$3;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$3;-><init>(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mRewardVerifyListener:Lcom/kwad/components/ad/reward/e/l;

    .line 37
    .line 38
    return-void
.end method

.method private R(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    iput p1, v0, Lcom/kwad/components/ad/reward/g;->tk:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/kwad/components/ad/reward/g;->T(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zA:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zv:Landroid/widget/TextView;

    .line 18
    .line 19
    sget-object v1, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zz:[Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aget-object v1, v1, v2

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kv:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mLiveDetailRewardFromAdLive:Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    int-to-long v1, p1

    .line 62
    iput-wide v1, v0, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->countDownSecond:J

    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ky:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zC:J

    return-wide p1
.end method

.method private a(JJJ)V
    .locals 8

    .line 15
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zC:J

    add-long v4, p1, v2

    const-wide/16 v6, 0x320

    sub-long v6, p3, v6

    sub-long/2addr v6, p5

    cmp-long p5, v4, v6

    if-gez p5, :cond_1

    sub-long/2addr p3, p1

    sub-long/2addr p3, v2

    long-to-float p1, p3

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    .line 17
    :goto_0
    invoke-direct {p0, v1}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->R(I)V

    .line 18
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object p1, p1, Lcom/kwad/components/ad/reward/g;->ta:Lcom/kwad/components/ad/reward/n/p;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1, v1}, Lcom/kwad/components/ad/reward/n/p;->at(I)V

    return-void

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iput-boolean v1, p1, Lcom/kwad/components/ad/reward/g;->sU:Z

    .line 21
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/components/ad/reward/g;->T(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/components/ad/reward/g;->R(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object p1, p1, Lcom/kwad/components/ad/reward/g;->ti:Lcom/kwad/components/ad/reward/l/b/a;

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/l/b/a;->lh()Z

    move-result p1

    if-nez p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object p1, p1, Lcom/kwad/components/ad/reward/g;->ti:Lcom/kwad/components/ad/reward/l/b/a;

    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/l/b/a;->lg()V

    goto :goto_1

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/components/ad/reward/g;->S(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object p1, p1, Lcom/kwad/components/ad/reward/g;->tj:Lcom/kwad/components/ad/reward/l/a/a;

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/l/a/a;->lh()Z

    move-result p1

    if-nez p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object p1, p1, Lcom/kwad/components/ad/reward/g;->tj:Lcom/kwad/components/ad/reward/l/a/a;

    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/l/a/a;->lg()V

    .line 28
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zA:Z

    if-nez p1, :cond_5

    .line 29
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zv:Landroid/widget/TextView;

    sget-object p2, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zz:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->jI()V

    return-void

    .line 31
    :cond_4
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->notifyRewardVerify()V

    .line 32
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->jH()V

    .line 33
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-object p1, p1, Lcom/kwad/components/ad/reward/g;->ta:Lcom/kwad/components/ad/reward/n/p;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Lcom/kwad/components/ad/reward/n/p;->at(I)V

    :cond_5
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->R(I)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zD:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ky:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zA:Z

    return p1
.end method

.method public static synthetic c(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kx:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)Lcom/kwad/sdk/utils/cc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 2
    .line 3
    return-object p0
.end method

.method private ds()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/kwad/components/ad/reward/g;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->O(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/kwad/components/ad/reward/g;->h(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x3e8

    .line 25
    .line 26
    div-long/2addr v0, v2

    .line 27
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/kwad/components/ad/reward/g;->T(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v3, 0x8

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zx:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zx:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zv:Landroid/widget/TextView;

    .line 49
    .line 50
    sget-object v5, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zz:[Ljava/lang/String;

    .line 51
    .line 52
    aget-object v4, v5, v4

    .line 53
    .line 54
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kv:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zx:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kv:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kv:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kv:Landroid/widget/TextView;

    .line 95
    .line 96
    const/high16 v1, 0x3f800000    # 1.0f

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-static {}, Lcom/kwad/components/ad/reward/b;->gw()Lcom/kwad/components/ad/reward/b;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mRewardVerifyListener:Lcom/kwad/components/ad/reward/e/l;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/b;->a(Lcom/kwad/components/ad/reward/e/l;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 113
    .line 114
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kf:Lcom/kwad/components/core/video/m;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/m/e;->a(Lcom/kwad/components/core/video/m;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public static synthetic e(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zv:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kv:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zw:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->notifyAdClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private jH()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zy:Z

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
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zy:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zw:Landroid/widget/ImageView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zw:Landroid/widget/ImageView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zw:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [F

    .line 28
    .line 29
    fill-array-data v0, :array_0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$4;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$4;-><init>(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$5;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$5;-><init>(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private jI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->mAdRewardStepListener:Lcom/kwad/components/ad/reward/e/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/kwad/components/ad/reward/e/d;->gB()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic jJ()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zz:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private notifyAdClick()V
    .locals 5

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/kwad/components/ad/reward/g;->mRootContainer:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/al$a;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->f(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/sdk/core/adlog/c/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x29

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/b;->ec(I)Lcom/kwad/sdk/core/adlog/c/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/kwad/components/ad/reward/g;->mReportExtData:Lorg/json/JSONObject;

    .line 29
    .line 30
    const-string v3, "native_id"

    .line 31
    .line 32
    const-string v4, "playTopBar-style1"

    .line 33
    .line 34
    invoke-static {v1, v3, v4, v0, v2}, Lcom/kwad/components/ad/reward/j/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/adlog/c/b;Lorg/json/JSONObject;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sy:Lcom/kwad/components/ad/reward/e/b;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/kwad/components/ad/reward/e/b;->dc()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private notifyRewardVerify()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sy:Lcom/kwad/components/ad/reward/e/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/components/ad/reward/e/b;->onRewardVerify()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mLiveDetailRewardFromAdLive:Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->success:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 9

    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aU(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/components/core/r/a;->wn()I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aS(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aQ(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    iget-boolean v2, v1, Lcom/kwad/components/ad/reward/g;->sR:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x3e8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    mul-int/2addr v0, v2

    int-to-long v7, v0

    move-wide v4, p1

    move-wide v2, p3

    move-wide v6, v7

    .line 10
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/reward/m;->b(Lcom/kwad/components/ad/reward/g;JJJ)V

    move-wide v7, v6

    move-wide v5, v4

    move-wide v3, v2

    .line 11
    iget-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zB:Z

    if-nez p1, :cond_2

    .line 12
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 13
    invoke-static/range {v2 .. v8}, Lcom/kwad/components/ad/reward/k;->a(Lcom/kwad/components/ad/reward/g;JJJ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zB:Z

    :cond_2
    move-object v2, p0

    .line 14
    invoke-direct/range {v2 .. v8}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->a(JJJ)V

    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 7

    .line 35
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 36
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/g;->hh()Z

    move-result p1

    const-wide/16 v1, 0x1f4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/g;->hg()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-wide v3, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ky:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ky:J

    .line 38
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->ak(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    move-result-wide v3

    .line 39
    iget-wide v5, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ky:J

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->a(JJ)V

    .line 40
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ca:Lcom/kwad/sdk/utils/cc;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 41
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ca:Lcom/kwad/sdk/utils/cc;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/reward/presenter/b;->ay()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/sdk/utils/cc;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/sdk/utils/cc;-><init>(Lcom/kwad/sdk/utils/cc$a;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ca:Lcom/kwad/sdk/utils/cc;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zE:Lcom/kwad/components/core/innerEc/live/base/f;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/components/core/innerEc/live/base/f;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->ds()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/m/e;->ls()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->ak(Lcom/kwad/sdk/core/response/model/AdInfo;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    long-to-float v0, v0

    .line 38
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 39
    .line 40
    div-float/2addr v0, v1

    .line 41
    float-to-int v0, v0

    .line 42
    invoke-direct {p0, v0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->R(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zw:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zx:Landroid/view/View;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    new-instance v0, Lcom/kwad/components/core/e/d/a$a;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x2

    .line 33
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/e/d/a$a;->aN(I)Lcom/kwad/components/core/e/d/a$a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/m/e;->getPlayDuration()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/kwad/components/core/e/d/a$a;->D(J)Lcom/kwad/components/core/e/d/a$a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$6;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a$6;-><init>(Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_video_count_down:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kv:Landroid/widget/TextView;

    .line 13
    .line 14
    sget v0, Lcom/kwad/sdk/R$id;->ksad_detail_reward_icon:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zw:Landroid/widget/ImageView;

    .line 23
    .line 24
    sget v0, Lcom/kwad/sdk/R$id;->ksad_reward_deep_task_count_down:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zv:Landroid/widget/TextView;

    .line 33
    .line 34
    sget v0, Lcom/kwad/sdk/R$id;->ksad_detail_reward_deep_task_view:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zx:Landroid/view/View;

    .line 41
    .line 42
    return-void
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/components/ad/reward/b;->gw()Lcom/kwad/components/ad/reward/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->mRewardVerifyListener:Lcom/kwad/components/ad/reward/e/l;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/b;->b(Lcom/kwad/components/ad/reward/e/l;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kf:Lcom/kwad/components/core/video/m;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/m/e;->b(Lcom/kwad/components/core/video/m;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zw:Landroid/widget/ImageView;

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zx:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zy:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zA:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->kx:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/platdetail/a/a;->zE:Lcom/kwad/components/core/innerEc/live/base/f;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->b(Lcom/kwad/components/core/innerEc/live/base/f;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
