.class public final synthetic Lcom/sigmob/sdk/newInterstitial/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/newInterstitial/i;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/q;->b:Lcom/sigmob/sdk/newInterstitial/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/q;->b:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->r(Lcom/sigmob/sdk/newInterstitial/i;)V

    return-void
.end method
