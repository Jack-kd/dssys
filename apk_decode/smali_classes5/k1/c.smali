.class public final synthetic Lk1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/varbto/internal/c;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/varbto/internal/c;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/c;->b:Lcom/varbto/internal/c;

    iput-wide p2, p0, Lk1/c;->c:J

    iput-object p4, p0, Lk1/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lk1/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk1/c;->b:Lcom/varbto/internal/c;

    iget-wide v1, p0, Lk1/c;->c:J

    iget-object v3, p0, Lk1/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lk1/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/varbto/internal/c;->e(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
