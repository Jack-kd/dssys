.class final Lcom/kwad/components/core/offline/b/a/a$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/offline/b/a/a;->startMerchantPay(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic abs:Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;

.field final synthetic abt:Lcom/kwad/components/core/offline/b/a/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/offline/b/a/a;Landroid/os/Handler;Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/offline/b/a/a$1;->abt:Lcom/kwad/components/core/offline/b/a/a;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/kwad/components/core/offline/b/a/a$1;->abs:Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "startMerchantPay onReceiveResult resultCode: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AdInnerEcHostProviderImpl"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/kwad/components/core/offline/b/a/q;->a(Landroid/os/Bundle;)Lcom/kwad/components/core/offline/b/a/q;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "startMerchantPay onReceiveResult payResultData: "

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-ne v0, p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/kwad/components/core/offline/b/a/a$1;->abs:Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;->onPaySuccess()V

    .line 49
    .line 50
    .line 51
    :cond_0
    sget-object p1, Lcom/kwad/components/core/e/d/a;->QI:Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;Lcom/kwad/components/core/offline/b/a/q;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x3

    .line 58
    if-ne v0, p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/kwad/components/core/offline/b/a/a$1;->abs:Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;->onPayCancel()V

    .line 65
    .line 66
    .line 67
    :cond_2
    sget-object p1, Lcom/kwad/components/core/e/d/a;->QI:Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 68
    .line 69
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/logger/a;->c(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;Lcom/kwad/components/core/offline/b/a/q;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    if-nez p1, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lcom/kwad/components/core/offline/b/a/a$1;->abs:Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;->onPayUnknown()V

    .line 80
    .line 81
    .line 82
    :cond_4
    sget-object p1, Lcom/kwad/components/core/e/d/a;->QJ:Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    .line 83
    .line 84
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/logger/a;->a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;Lcom/kwad/components/core/offline/b/a/q;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/core/offline/b/a/a$1;->abs:Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {v0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/pay/IHostPayResultListener;->onPayFailure(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    sget-object p1, Lcom/kwad/components/core/e/d/a;->QJ:Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    .line 100
    .line 101
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/logger/a;->a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;Lcom/kwad/components/core/offline/b/a/q;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
