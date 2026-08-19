.class public final synthetic Lcom/fl/saas/Z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/B;


# instance fields
.field public final synthetic a:Lcom/fl/saas/e;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/Z1;->a:Lcom/fl/saas/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/Z1;->a:Lcom/fl/saas/e;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/fl/saas/e;->i(Lcom/fl/saas/e;Ljava/lang/Integer;)V

    return-void
.end method
