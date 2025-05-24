for zone_dir in /sys/class/thermal/thermal_zone*; do \
    if [ -f "$zone_dir/type" ]; then \
        echo -n "$zone_dir: "; \
        cat "$zone_dir/type"; \
    else \
        echo "$zone_dir: (no type file)"; \
    fi; \
done
