require 'rspec'
require './binary_tree.rb'

describe 'Node' do
  let(:root) { Node.new(0) }
  let(:node) { Node.new(1) }

  it 'node provides accurate value' do
    expect(root.value).to eq (0)
    expect(node.value).to eq (1)
  end

  it 'adds a node' do
    root.add(node)

    expect(root.left).to eq(node)
  end
end
