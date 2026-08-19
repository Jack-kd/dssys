.class public final synthetic Lcom/fl/saas/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/g;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/r2;->a:Lcom/fl/saas/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/r2;->a:Lcom/fl/saas/g;

    check-cast p1, Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;

    invoke-static {v0, p1}, Lcom/fl/saas/g;->f(Lcom/fl/saas/g;Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;)V

    return-void
.end method
