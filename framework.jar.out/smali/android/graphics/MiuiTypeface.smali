.class public Landroid/graphics/MiuiTypeface;
.super Ljava/lang/Object;
.source "MiuiTypeface.java"


# static fields
.field private static final DROID_SANS:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Regular.ttf"

.field private static final DROID_SANS_BOLD:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Bold.ttf"

.field private static final DROID_SANS_FALLBACK:Ljava/lang/String; = "/data/system/theme/fonts/DroidSansFallback.ttf"

.field private static DROID_SANS_FONTS:[Ljava/lang/String; = null

.field private static DROID_SANS_FONTS_BOLD:[Ljava/lang/String; = null

.field public static FLIPFONT:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_ITALIC:Landroid/graphics/Typeface; = null

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/data/system/theme/fonts/"

.field public static final MONOSPACE_INDEX:I = 0x3

.field public static final SANS_INDEX:I = 0x1

.field public static final SERIF_INDEX:I = 0x2

.field private static mLastModified:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/system/theme/fonts/DroidSansFallback.ttf"

    aput-object v1, v0, v3

    const-string v1, "/data/system/theme/fonts/Roboto-Regular.ttf"

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    .line 17
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/data/system/theme/fonts/Roboto-Bold.ttf"

    aput-object v1, v0, v3

    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    .line 21
    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 22
    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 23
    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 24
    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChangedTypeface(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;
    .locals 1
    .parameter "oldtf"
    .parameter "typefaceIndex"
    .parameter "style"

    .prologue
    .line 41
    invoke-static {p1, p2}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object v0

    .line 42
    .local v0, newtf:Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 45
    .end local v0           #newtf:Landroid/graphics/Typeface;
    :goto_0
    return-object v0

    .restart local v0       #newtf:Landroid/graphics/Typeface;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getDefaultTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "tf"

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object p0

    .line 53
    :cond_0
    return-object p0
.end method

.method private static getFlipFontPath(II)Ljava/lang/String;
    .locals 6
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    const/4 v5, 0x1

    .line 57
    if-eq p0, v5, :cond_1

    .line 58
    const-string v1, ""

    .line 71
    :cond_0
    :goto_0
    return-object v1

    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 61
    .local v2, fonts:[Ljava/lang/String;
    if-nez p1, :cond_3

    .line 62
    sget-object v2, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    .line 67
    :cond_2
    :goto_1
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 68
    .local v1, font:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 63
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #font:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    if-ne p1, v5, :cond_2

    .line 64
    sget-object v2, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    goto :goto_1

    .line 71
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_4
    const-string v1, ""

    goto :goto_0
.end method

.method private static getTypefaceFlipFont(II)Landroid/graphics/Typeface;
    .locals 1
    .parameter "typefaceIndex"
    .parameter "style"

    .prologue
    .line 33
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 36
    :cond_1
    invoke-static {}, Landroid/graphics/MiuiTypeface;->setTypefaceFlipFont()V

    .line 37
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private static setTypefaceFlipFont()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 75
    invoke-static {v8, v11}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, fontPath:Ljava/lang/String;
    invoke-static {v8, v8}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, fontBoldPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, fontFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 80
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    move-object v4, v5

    .line 81
    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 82
    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 99
    :cond_0
    :goto_0
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    aput-object v5, v4, v11

    .line 100
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    aput-object v5, v4, v8

    .line 101
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    aput-object v5, v4, v9

    .line 102
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    aput-object v5, v4, v10

    .line 103
    return-void

    .line 83
    :cond_1
    sget-wide v4, Landroid/graphics/MiuiTypeface;->mLastModified:J

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 85
    :try_start_0
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 88
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    sget-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 95
    sget-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v4, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 96
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sput-wide v4, Landroid/graphics/MiuiTypeface;->mLastModified:J

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    goto :goto_1
.end method