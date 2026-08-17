.class public final synthetic Lcom/fl/saas/H1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/Y;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Lcom/fl/saas/T;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/Y;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/fl/saas/T;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/H1;->b:Lcom/fl/saas/Y;

    iput-object p2, p0, Lcom/fl/saas/H1;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/fl/saas/H1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/fl/saas/H1;->e:Ljava/util/Map;

    iput-object p5, p0, Lcom/fl/saas/H1;->f:Lcom/fl/saas/T;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fl/saas/H1;->b:Lcom/fl/saas/Y;

    iget-object v1, p0, Lcom/fl/saas/H1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/fl/saas/H1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/fl/saas/H1;->e:Ljava/util/Map;

    iget-object v4, p0, Lcom/fl/saas/H1;->f:Lcom/fl/saas/T;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fl/saas/Y;->c(Lcom/fl/saas/Y;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/fl/saas/T;)V

    return-void
.end method
