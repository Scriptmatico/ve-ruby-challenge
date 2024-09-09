class MetricsController < ApplicationController
  # POST /metric/{key}
  def create
    key = params[:key]
    value = params[:value]

    metric = Metric.new(key: key, value: value)
    if metric.save
      render json: {}, status: :ok
    else
      render json: { error: 'Failed to save metric' }, status: :unprocessable_entity
    end
  end

  # DELETE /metric/{key}
  def destroy
    key = params[:key]
    Metric.where(key: key).delete_all
    render json: {}, status: :ok
  end

  # GET /metrics
  def index
    one_hour_ago = Time.now - 1.hour
    metrics = Metric.where('created_at >= ?', one_hour_ago)

    aggregated_metrics = metrics.group_by(&:key).map do |key, metrics|
      { key: key, total: metrics.sum(&:value) }
    end

    render json: aggregated_metrics, status: :ok
  end
end
