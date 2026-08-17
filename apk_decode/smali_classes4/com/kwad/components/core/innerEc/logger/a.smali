.class public final Lcom/kwad/components/core/innerEc/logger/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;)V
    .locals 3

    .line 20
    :try_start_0
    const-string v0, "InnerEcCLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportInnerEcError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/kwai/adclient/kscommerciallogger/model/d;->bvc:Lcom/kwai/adclient/kscommerciallogger/model/d;

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/kwad/sdk/commercial/c;->b(ZLcom/kwad/sdk/commercial/c/a;Lcom/kwai/adclient/kscommerciallogger/model/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 22
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;Lcom/kwad/components/core/offline/b/a/q;)V
    .locals 1

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->copyFrom(Lcom/kwad/components/core/innerEc/logger/InnerEcError;)Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    move-result-object p0

    const/4 v0, 0x5

    .line 12
    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->status:I

    .line 13
    iget-object v0, p1, Lcom/kwad/components/core/offline/b/a/q;->errorMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payErrorMsg:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acq:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payOrderNo:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acr:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payMerchantId:Ljava/lang/String;

    .line 16
    iget v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acs:I

    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payOriginalResultCode:I

    .line 17
    iget-object p1, p1, Lcom/kwad/components/core/offline/b/a/q;->act:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->payExtData:Ljava/lang/String;

    .line 18
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 19
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->copyFrom(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    move-result-object p0

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->status:I

    .line 3
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;Lcom/kwad/components/core/offline/b/a/q;)V
    .locals 1

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->copyFrom(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    move-result-object p0

    const/16 v0, 0xb

    .line 6
    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->status:I

    .line 7
    iget-object v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acq:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOrderNo:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/kwad/components/core/offline/b/a/q;->acr:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payMerchantId:Ljava/lang/String;

    .line 9
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 10
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static aP(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static aQ(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static aR(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static aS(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static aT(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x1f41

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static aU(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x1f42

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static aV(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x1f43

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static aW(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    .locals 3

    .line 9
    :try_start_0
    const-string v0, "InnerEcCLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportInnerEcEvent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/kwai/adclient/kscommerciallogger/model/d;->bvc:Lcom/kwai/adclient/kscommerciallogger/model/d;

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/kwad/sdk/commercial/c;->b(ZLcom/kwad/sdk/commercial/c/a;Lcom/kwai/adclient/kscommerciallogger/model/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;Lcom/kwad/components/core/offline/b/a/q;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->copyFrom(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    move-result-object p0

    const/16 v0, 0xc

    .line 2
    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->status:I

    .line 3
    iget-object v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acq:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOrderNo:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acr:Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payMerchantId:Ljava/lang/String;

    .line 5
    iget v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acs:I

    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOriginalResultCode:I

    .line 6
    iget-object p1, p1, Lcom/kwad/components/core/offline/b/a/q;->act:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payExtData:Ljava/lang/String;

    .line 7
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;Lcom/kwad/components/core/offline/b/a/q;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->copyFrom(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0xd

    .line 6
    .line 7
    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/BaseInnerEcMsg;->status:I

    .line 8
    .line 9
    iget-object v0, p1, Lcom/kwad/components/core/offline/b/a/q;->errorMsg:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payErrorMsg:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acq:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOrderNo:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acr:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payMerchantId:Ljava/lang/String;

    .line 20
    .line 21
    iget v0, p1, Lcom/kwad/components/core/offline/b/a/q;->acs:I

    .line 22
    .line 23
    iput v0, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payOriginalResultCode:I

    .line 24
    .line 25
    iget-object p1, p1, Lcom/kwad/components/core/offline/b/a/q;->act:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->payExtData:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createAdClickEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->clickUserNowCancel:Z

    .line 6
    .line 7
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->createCommonError(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iput p1, p0, Lcom/kwad/sdk/commercial/c/a;->errorCode:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/kwad/sdk/commercial/c/a;->errorMsg:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->createCommonError(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    move-result-object p0

    .line 6
    iput p1, p0, Lcom/kwad/sdk/commercial/c/a;->errorCode:I

    .line 7
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1389

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    move-result-object p0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->authType:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x138a

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->authType:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static j(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->authType:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static k(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->createCommonEvent(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;->authType:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->b(Lcom/kwad/components/core/innerEc/logger/InnerEcEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static l(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->createCommonError(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iput-object p1, p0, Lcom/kwad/sdk/commercial/c/a;->errorMsg:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static m(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->createCommonError(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Lcom/kwad/components/core/innerEc/logger/InnerEcError;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/logger/InnerEcError;->errorUrl:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/kwad/components/core/innerEc/logger/a;->a(Lcom/kwad/components/core/innerEc/logger/InnerEcError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/kwad/sdk/crash/b;->u(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
