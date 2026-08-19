.class public final synthetic Lcom/fl/saas/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/f;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/m2;->a:Lcom/fl/saas/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/m2;->a:Lcom/fl/saas/f;

    check-cast p1, Lcom/fl/saas/adx/api/mixNative/NativeAd;

    invoke-static {v0, p1}, Lcom/fl/saas/f;->g(Lcom/fl/saas/f;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    return-void
.end method
