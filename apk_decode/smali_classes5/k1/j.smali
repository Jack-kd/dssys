.class public final synthetic Lk1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/varbto/internal/i;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/varbto/internal/i;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/j;->b:Lcom/varbto/internal/i;

    iput-wide p2, p0, Lk1/j;->c:J

    iput-object p4, p0, Lk1/j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk1/j;->b:Lcom/varbto/internal/i;

    iget-wide v1, p0, Lk1/j;->c:J

    iget-object v3, p0, Lk1/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/varbto/internal/i;->w(JLjava/lang/String;)V

    return-void
.end method
