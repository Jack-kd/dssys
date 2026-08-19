.class public final synthetic Lcom/fl/saas/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/K0;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/K0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/p1;->a:Lcom/fl/saas/K0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/p1;->a:Lcom/fl/saas/K0;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/fl/saas/K0;->u(Lcom/fl/saas/K0;Ljava/lang/Integer;)V

    return-void
.end method
