.class public final synthetic Lcom/sigmob/sdk/newInterstitial/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ac;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/newInterstitial/i;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/m;->b:Lcom/sigmob/sdk/newInterstitial/i;

    return-void
.end method


# virtual methods
.method public final onAdClick(ZLcom/sigmob/sdk/base/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/m;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/newInterstitial/i;->v(Lcom/sigmob/sdk/newInterstitial/i;ZLcom/sigmob/sdk/base/a;)V

    return-void
.end method
