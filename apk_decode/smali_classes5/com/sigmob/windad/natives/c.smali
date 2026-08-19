.class public final synthetic Lcom/sigmob/windad/natives/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/sigmob/windad/natives/WindNativeAdRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;ILjava/lang/String;Lcom/sigmob/windad/natives/WindNativeAdRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/natives/c;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;

    iput p2, p0, Lcom/sigmob/windad/natives/c;->c:I

    iput-object p3, p0, Lcom/sigmob/windad/natives/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/windad/natives/c;->e:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/windad/natives/c;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;

    iget v1, p0, Lcom/sigmob/windad/natives/c;->c:I

    iget-object v2, p0, Lcom/sigmob/windad/natives/c;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/windad/natives/c;->e:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-static {v0, v1, v2, v3}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;->a(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;ILjava/lang/String;Lcom/sigmob/windad/natives/WindNativeAdRequest;)V

    return-void
.end method
