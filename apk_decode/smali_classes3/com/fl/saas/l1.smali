.class public final synthetic Lcom/fl/saas/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/J;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/J;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/l1;->a:Lcom/fl/saas/J;

    return-void
.end method


# virtual methods
.method public final onADLoaded(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/l1;->a:Lcom/fl/saas/J;

    invoke-static {v0, p1}, Lcom/fl/saas/J;->c(Lcom/fl/saas/J;Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V

    return-void
.end method
