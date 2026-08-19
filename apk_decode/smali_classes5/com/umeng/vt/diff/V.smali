.class public Lcom/umeng/vt/diff/V;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EVENT_BINDINGS:Ljava/lang/String; = "event_bindings"

.field public static final SP_BINDINGS_KEY:Ljava/lang/String; = "bindings"

.field public static final SP_EDITS_FILE:Ljava/lang/String;

.field public static final TYPE_ABTEST:I = 0x2

.field public static final TYPE_AUTOTRACK:I = 0x1

.field public static final TYPE_GENERALTRACK:I = 0x0

.field public static final VERSION:Ljava/lang/String; = "1.0.0"

.field public static final VISUAL_TRACK_PG:Ljava/lang/String; = "_$!pg"

.field public static final VISUAL_TRACK_STYLE:Ljava/lang/String; = "_$!style"

.field public static final VISUAL_TRACK_TEXT:Ljava/lang/String; = "_$!text"

.field public static final VISUAL_TRACK_UAPP_PG:Ljava/lang/String; = "_$!uapp_pg"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/umeng/analytics/pro/be;->b()Lcom/umeng/analytics/pro/be;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ugc"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/be;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/umeng/vt/diff/V;->SP_EDITS_FILE:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
