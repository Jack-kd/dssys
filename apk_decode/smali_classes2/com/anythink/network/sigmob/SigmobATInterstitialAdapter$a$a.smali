.class Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a$a;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a$a;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a$a;->a:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter$a;->c:Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;->a(Lcom/anythink/network/sigmob/SigmobATInterstitialAdapter;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
