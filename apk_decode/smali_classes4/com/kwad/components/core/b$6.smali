.class final Lcom/kwad/components/core/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/b;->loadNativeAd(Ljava/lang/String;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/g/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OE:Lcom/kwad/components/core/b;

.field final synthetic OG:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

.field final synthetic OH:Ljava/lang/String;

.field final synthetic po:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/b;Ljava/lang/String;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/b$6;->OE:Lcom/kwad/components/core/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/b$6;->OH:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/b$6;->OG:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/core/b$6;->po:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    const-class v0, Lcom/kwad/components/ad/b/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/components/ad/b/g;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/kwad/components/core/b$6;->OH:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/components/core/b$6;->OG:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Lcom/kwad/components/ad/b/g;->loadNativeAd(Ljava/lang/String;Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object p1, Lcom/kwad/components/ad/f/a;->pe:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTb:Lcom/kwad/sdk/core/network/e;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/components/core/b$6;->po:Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;

    .line 36
    .line 37
    iget v1, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 38
    .line 39
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v0, v1, p1}, Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;->onError(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/b$6;->a(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
