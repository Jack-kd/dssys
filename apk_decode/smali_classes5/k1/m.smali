.class public final synthetic Lk1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/varbto/internal/i;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/varbto/internal/i;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/m;->b:Lcom/varbto/internal/i;

    iput-object p2, p0, Lk1/m;->c:Ljava/lang/String;

    iput-wide p3, p0, Lk1/m;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk1/m;->b:Lcom/varbto/internal/i;

    iget-object v1, p0, Lk1/m;->c:Ljava/lang/String;

    iget-wide v2, p0, Lk1/m;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/varbto/internal/i;->s(Ljava/lang/String;J)V

    return-void
.end method
