.class Lcom/kwad/sdk/oaid/NewOAIDSDKHelper$IIdentifierListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/oaid/NewOAIDSDKHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IIdentifierListenerImpl"
.end annotation


# instance fields
.field private final mOaidListener:Lcom/kwad/sdk/oaid/NewOAIDSDKHelper$a;

.field private final mStartTime:J


# direct methods
.method public constructor <init>(JLcom/kwad/sdk/oaid/NewOAIDSDKHelper$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/kwad/sdk/oaid/NewOAIDSDKHelper$IIdentifierListenerImpl;->mStartTime:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/kwad/sdk/oaid/NewOAIDSDKHelper$IIdentifierListenerImpl;->mOaidListener:Lcom/kwad/sdk/oaid/NewOAIDSDKHelper$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/sdk/oaid/NewOAIDSDKHelper$IIdentifierListenerImpl;->mOaidListener:Lcom/kwad/sdk/oaid/NewOAIDSDKHelper$a;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/kwad/sdk/oaid/NewOAIDSDKHelper$a;->OnOAIDValid(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    invoke-static {p1}, Lcom/kwad/sdk/oaid/NewOAIDSDKHelper;->access$002(Z)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 27
    invoke-static {p1}, Lcom/kwad/sdk/oaid/NewOAIDSDKHelper;->access$102(Z)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
