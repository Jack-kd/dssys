.class public final synthetic Lcom/sigmob/windad/natives/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

.field public final synthetic c:Lcom/sigmob/windad/WindAdError;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/sigmob/windad/WindAdError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/windad/natives/a;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    iput-object p2, p0, Lcom/sigmob/windad/natives/a;->c:Lcom/sigmob/windad/WindAdError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/windad/natives/a;->b:Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    iget-object v1, p0, Lcom/sigmob/windad/natives/a;->c:Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, v1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->i(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method
