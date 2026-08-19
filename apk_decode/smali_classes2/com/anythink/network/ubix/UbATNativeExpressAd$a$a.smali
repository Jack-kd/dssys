.class Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->onAdLoadSucceed(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[Lcom/anythink/network/ubix/UbATExpressAd;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATNativeExpressAd$a;I[Lcom/anythink/network/ubix/UbATExpressAd;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;IJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 2
    .line 3
    iput p2, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->b:[Lcom/anythink/network/ubix/UbATExpressAd;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    iput p6, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->e:I

    .line 12
    .line 13
    iput-wide p7, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->f:J

    .line 14
    .line 15
    iput-object p9, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->g:Ljava/util/List;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    iget v2, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->e:I

    .line 25
    .line 26
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iget-wide v2, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->f:J

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_0
    iget v5, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->e:I

    .line 33
    .line 34
    if-ge v1, v5, :cond_3

    .line 35
    .line 36
    iget-object v5, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->b:[Lcom/anythink/network/ubix/UbATExpressAd;

    .line 37
    .line 38
    aget-object v5, v5, v1

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    iget-object v2, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->g:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;

    .line 54
    .line 55
    invoke-interface {v2}, Lcom/ubix/ssp/open/nativee/express/NativeExpressAd;->getPrice()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    move-wide v6, v3

    .line 60
    move-object v4, v2

    .line 61
    move-wide v2, v6

    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v1, ""

    .line 90
    .line 91
    const-string v2, "all renders failed"

    .line 92
    .line 93
    invoke-interface {v0, v1, v2}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    long-to-double v2, v2

    .line 116
    invoke-interface {v1, v0, v4, v2, v3}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;D)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->a:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->b:[Lcom/anythink/network/ubix/UbATExpressAd;

    .line 11
    .line 12
    aget-object p1, v0, p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->a:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->b:[Lcom/anythink/network/ubix/UbATExpressAd;

    .line 11
    .line 12
    aget-object v0, v1, v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdExposed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->a:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->b:[Lcom/anythink/network/ubix/UbATExpressAd;

    .line 11
    .line 12
    aget-object v0, v1, v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onAdRenderFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->a:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->b:[Lcom/anythink/network/ubix/UbATExpressAd;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object v1, v0, p1

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->a()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onAdRenderSucceed(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->h:Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;->a:Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->b:[Lcom/anythink/network/ubix/UbATExpressAd;

    .line 14
    .line 15
    iget v1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->a:I

    .line 16
    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/anythink/network/ubix/UbATExpressAd;->a(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->b:[Lcom/anythink/network/ubix/UbATExpressAd;

    .line 24
    .line 25
    iget v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->a:I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    aput-object v1, p1, v0

    .line 29
    .line 30
    :goto_0
    invoke-direct {p0}, Lcom/anythink/network/ubix/UbATNativeExpressAd$a$a;->a()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
