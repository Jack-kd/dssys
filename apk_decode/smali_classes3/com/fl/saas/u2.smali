.class public final synthetic Lcom/fl/saas/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/g$b;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/g$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/u2;->b:Lcom/fl/saas/g$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/u2;->b:Lcom/fl/saas/g$b;

    invoke-static {v0}, Lcom/fl/saas/g$b;->a(Lcom/fl/saas/g$b;)V

    return-void
.end method
